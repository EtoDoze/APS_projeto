# OficinaFácil

Sistema desktop de **gestão de oficina mecânica**, desenvolvido na disciplina *Análise e Projeto de Sistemas*.

## Tema

Controle do ciclo completo de uma **ordem de serviço (OS)**: abertura, diagnóstico, orçamento, aprovação do cliente,
execução, consumo de peças do estoque, conclusão, entrega e pagamento. Perfis de acesso: Atendente, Mecânico,
Almoxarife e Gerente.

## Integrantes

| Nome | GitHub |
|------|--------|
| _Roberto_ | @EtoDoze |
| _Elto_ | @usuario2 |
| _Pedro Lucas_ | @usuario3 |
| _Évillyn_ | @usuario4 |

## Tecnologias

Java 21 · JavaFX 21 · SQLite (sqlite-jdbc) · JDBC · Maven

## Como executar

Pré-requisitos: JDK 21 e Maven 3.9+ instalados.

```bash
git clone <url-do-repositorio>
cd oficina-facil
mvn javafx:run
```

O banco SQLite (arquivo local) será criado pelo próprio sistema na primeira execução (a partir da semana de persistência).

## Estrutura

```
docs/
  casos-de-uso.md            # atores, casos de uso e especificações
  historias-de-usuario.md    # Product Backlog inicial (também cadastrado como issues)
  diagramas/
    casos-de-uso.png         # diagrama
    casos-de-uso.dot         # arquivo-fonte (Graphviz)
src/main/java/...            # código-fonte
scripts/criar-issues.sh      # cria as issues do backlog via GitHub CLI
```

## Entregas semanais

| Semana | Entrega | Diagrama | Status |
|--------|---------|----------|--------|
| 1 | Setup do projeto e casos de uso | Casos de uso | Entregue |

Cada commit de entrega referencia o elemento do diagrama que implementa (ex.: `UC07: abre ordem de serviço`).

## Product Backlog

As histórias de usuário estão em [`docs/historias-de-usuario.md`](docs/historias-de-usuario.md) 
