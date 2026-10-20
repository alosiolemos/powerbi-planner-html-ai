# Modelo e contexto dos cálculos

O inventário contém 3 páginas, 31 medidas e 18 relações. Dessas relações, 16 envolvem calendários locais automáticos; dois vínculos são centrais à narrativa.

| Campo | Campo relacionado | Estado |
| --- | --- | --- |
| tb.UNIFICADA CARDS[Data - createdDateTime] | Calendario[Date] | Ativo |
| tb.UNIFICADA CHECKLIST[id] | tb.UNIFICADA CARDS[id] | Ativo |

```mermaid
flowchart LR
    D["Calendario.Date"] --- C["CARDS: Data - createdDateTime"]
    C --- K["CHECKLIST: id do card"]
```

As linhas representam os vínculos, não a direção de propagação dos filtros.

## Tabelas e papéis

- **tb.UNIFICADA CARDS:** tarefas consolidadas dos boards e seus atributos.
- **tb.UNIFICADA CHECKLIST:** itens associados ao card.
- **Calendario:** referência temporal.
- **Parâmetro:** seleção de indicador.
- **Atualização:** data/hora apresentada no título.
- **tbv Gemini Tarefas:** definição auxiliar encontrada no modelo; o chat selecionado também prepara dados diretamente de CARDS.

Os nomes de tabelas originais foram preservados no código para facilitar a adaptação das medidas. Nenhuma linha real foi distribuída.

## Campos exigidos

CARDS usa id, title, Board, Bucket_Name, Categoria, Solicitante, Tipo, Frente de Demanda 2, Priorizado, cob, tasks_details, percentComplete e datas de criação/conclusão em suas representações originais e derivadas.

CHECKLIST usa id, id_checklist, Checklist.title, Checklist.isChecked e Checklist.orderHint. O id relaciona o item ao card.

O calendário precisa das colunas temporais referenciadas nas expressões, incluindo Date e as chaves/rótulos de ano e mês do gráfico. Parâmetro exige Parâmetro Pedido.

## Regras importantes

Total Atividades usa COUNT do id; não elimina duplicidades. Concluídas filtra o status textual Concluída. Backlog Aberto soma em andamento e não iniciadas.

Conclusão (dias) utiliza AVERAGEX e DATEDIFF entre criação e conclusão das tarefas concluídas com data final preenchida. A data ativa de filtro do modelo é criação; não se deve interpretar toda métrica mensal automaticamente como entregas concluídas naquele mês.

O percentual de checklist considera a quantidade de itens e a classificação Concluído. Sem itens, o DIVIDE usa zero como resultado alternativo.

A coerência da granularidade, dos status e das datas precisa ser validada com o conjunto de dados utilizado.
