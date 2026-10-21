#!/usr/bin/env bash
# Cria as issues do Product Backlog. Requer GitHub CLI (gh) autenticado, executado na raiz do repositório.
# Uso: ./scripts/criar-issues.sh
set -euo pipefail

for l in P1:d73a4a P2:fbca04 P3:0e8a16 historia-de-usuario:1d76db; do
  gh label create "${l%%:*}" --color "${l##*:}" --force >/dev/null
done

# formato: ID|prioridade|papel|história|UCs
while IFS='|' read -r id prio papel historia ucs; do
  [ -z "$id" ] && continue
  gh issue create \
    --title "$id — $historia" \
    --label "historia-de-usuario,$prio" \
    --body "**Papel:** $papel
**História:** $historia
**Casos de uso:** $ucs

**Critérios de aceite:** a detalhar na especificação do(s) caso(s) de uso em \`docs/casos-de-uso.md\`."
  sleep 1
done <<'HISTORIAS'
US01|P1|Todos|Como funcionário, quero entrar no sistema com login e senha e ver apenas as funções do meu perfil, para que cada pessoa acesse só o que lhe cabe.|UC01
US02|P1|Gerente|Como gerente, quero cadastrar usuários e definir o perfil de cada um, para controlar quem acessa o sistema.|UC02
US03|P1|Atendente|Como atendente, quero cadastrar clientes, para vincular veículos e ordens de serviço a eles.|UC03
US04|P1|Atendente|Como atendente, quero cadastrar os veículos de um cliente, para abrir ordens de serviço para o veículo correto.|UC04
US05|P1|Atendente|Como atendente, quero abrir uma ordem de serviço informando cliente, veículo e a queixa relatada, para iniciar o atendimento.|UC07
US06|P1|Mecânico|Como mecânico, quero ver as ordens de serviço abertas e assumir uma delas, para saber o que devo atender.|UC17, UC08
US07|P1|Mecânico|Como mecânico, quero registrar o diagnóstico do veículo, para embasar o orçamento.|UC08
US08|P1|Gerente|Como gerente, quero cadastrar o catálogo de serviços com o preço da mão de obra, para padronizar os orçamentos.|UC05
US09|P1|Almoxarife|Como almoxarife, quero cadastrar peças com preço de venda, quantidade em estoque e estoque mínimo, para controlar o almoxarifado.|UC06
US10|P1|Atendente|Como atendente, quero montar o orçamento com serviços e peças e ver o total calculado automaticamente, para informar o cliente.|UC09
US11|P1|Atendente|Como atendente, quero registrar se o cliente aprovou ou recusou o orçamento, para liberar ou encerrar a ordem de serviço.|UC11
US12|P1|Mecânico|Como mecânico, quero registrar o início e o andamento da execução do serviço, para manter a OS atualizada.|UC12
US13|P1|Mecânico|Como mecânico, quero registrar as peças usadas no serviço e ter o estoque abatido, para não haver divergência de estoque.|UC13, UC12
US14|P1|Mecânico|Como mecânico, quero concluir a ordem de serviço, para avisar que o veículo está pronto.|UC14
US15|P1|Atendente|Como atendente, quero entregar o veículo e registrar o pagamento, para encerrar a ordem de serviço.|UC15
US16|P2|Atendente|Como atendente, quero consultar ordens de serviço por placa, cliente ou situação, para informar o andamento ao cliente.|UC17
US17|P2|Gerente|Como gerente, quero autorizar descontos acima do limite permitido, para manter o controle financeiro.|UC10, UC09
US18|P2|Atendente|Como atendente, quero cancelar uma ordem de serviço ainda não iniciada, registrando o motivo, para refletir a desistência do cliente.|UC16
US19|P2|Gerente|Como gerente, quero cancelar uma ordem de serviço já aprovada ou em execução, registrando o motivo, para tratar casos excepcionais.|UC16
US20|P2|Almoxarife|Como almoxarife, quero registrar a entrada de peças no estoque, para repor o que foi consumido.|UC18
US21|P2|Almoxarife|Como almoxarife, quero ver as peças abaixo do estoque mínimo, para priorizar a reposição.|UC18, UC06
US22|P3|Gerente|Como gerente, quero emitir um relatório de faturamento por período, para acompanhar o desempenho da oficina.|UC19
US23|P3|Gerente|Como gerente, quero consultar todas as ordens de serviço e seus históricos de situação, para auditar o trabalho da oficina.|UC17
HISTORIAS
