# Histórias de Usuário — Product Backlog inicial

Ordenadas por prioridade (P1 = essencial para o fluxo principal; P2 = importante; P3 = complementar). Cada história origina um ou mais casos de uso (ver [casos-de-uso.md](casos-de-uso.md)).


## Todos

| ID | Prio. | História | Casos de uso |
|----|-------|----------|--------------|
| US01 | P1 | Como funcionário, quero entrar no sistema com login e senha e ver apenas as funções do meu perfil, para que cada pessoa acesse só o que lhe cabe. | UC01 |

## Atendente

| ID | Prio. | História | Casos de uso |
|----|-------|----------|--------------|
| US03 | P1 | Como atendente, quero cadastrar clientes, para vincular veículos e ordens de serviço a eles. | UC03 |
| US04 | P1 | Como atendente, quero cadastrar os veículos de um cliente, para abrir ordens de serviço para o veículo correto. | UC04 |
| US05 | P1 | Como atendente, quero abrir uma ordem de serviço informando cliente, veículo e a queixa relatada, para iniciar o atendimento. | UC07 |
| US10 | P1 | Como atendente, quero montar o orçamento com serviços e peças e ver o total calculado automaticamente, para informar o cliente. | UC09 |
| US11 | P1 | Como atendente, quero registrar se o cliente aprovou ou recusou o orçamento, para liberar ou encerrar a ordem de serviço. | UC11 |
| US15 | P1 | Como atendente, quero entregar o veículo e registrar o pagamento, para encerrar a ordem de serviço. | UC15 |
| US16 | P2 | Como atendente, quero consultar ordens de serviço por placa, cliente ou situação, para informar o andamento ao cliente. | UC17 |
| US18 | P2 | Como atendente, quero cancelar uma ordem de serviço ainda não iniciada, registrando o motivo, para refletir a desistência do cliente. | UC16 |

## Mecânico

| ID | Prio. | História | Casos de uso |
|----|-------|----------|--------------|
| US06 | P1 | Como mecânico, quero ver as ordens de serviço abertas e assumir uma delas, para saber o que devo atender. | UC17, UC08 |
| US07 | P1 | Como mecânico, quero registrar o diagnóstico do veículo, para embasar o orçamento. | UC08 |
| US12 | P1 | Como mecânico, quero registrar o início e o andamento da execução do serviço, para manter a OS atualizada. | UC12 |
| US13 | P1 | Como mecânico, quero registrar as peças usadas no serviço e ter o estoque abatido, para não haver divergência de estoque. | UC13, UC12 |
| US14 | P1 | Como mecânico, quero concluir a ordem de serviço, para avisar que o veículo está pronto. | UC14 |

## Almoxarife

| ID | Prio. | História | Casos de uso |
|----|-------|----------|--------------|
| US09 | P1 | Como almoxarife, quero cadastrar peças com preço de venda, quantidade em estoque e estoque mínimo, para controlar o almoxarifado. | UC06 |
| US20 | P2 | Como almoxarife, quero registrar a entrada de peças no estoque, para repor o que foi consumido. | UC18 |
| US21 | P2 | Como almoxarife, quero ver as peças abaixo do estoque mínimo, para priorizar a reposição. | UC18, UC06 |

## Gerente

| ID | Prio. | História | Casos de uso |
|----|-------|----------|--------------|
| US02 | P1 | Como gerente, quero cadastrar usuários e definir o perfil de cada um, para controlar quem acessa o sistema. | UC02 |
| US08 | P1 | Como gerente, quero cadastrar o catálogo de serviços com o preço da mão de obra, para padronizar os orçamentos. | UC05 |
| US17 | P2 | Como gerente, quero autorizar descontos acima do limite permitido, para manter o controle financeiro. | UC10, UC09 |
| US19 | P2 | Como gerente, quero cancelar uma ordem de serviço já aprovada ou em execução, registrando o motivo, para tratar casos excepcionais. | UC16 |
| US22 | P3 | Como gerente, quero emitir um relatório de faturamento por período, para acompanhar o desempenho da oficina. | UC19 |
| US23 | P3 | Como gerente, quero consultar todas as ordens de serviço e seus históricos de situação, para auditar o trabalho da oficina. | UC17 |

## Ordem do backlog (por prioridade)

US01 → US02 → US03 → US04 → US05 → US06 → US07 → US08 → US09 → US10 → US11 → US12 → US13 → US14 → US15 → US16 → US17 → US18 → US19 → US20 → US21 → US22 → US23
