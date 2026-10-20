# Como adaptar o código

## Primeira etapa: leitura

Leia [o modelo](modelo.md), [o guia HTML](medidas-html.md) e as [restrições da IA](ia-gemini.md). O repositório não contém PBIP pronto nem acesso ao tenant original.

## Montagem em uma cópia didática

1. Prepare tabelas com os nomes e tipos exigidos pelo esquema.
2. Crie as relações de calendário e checklist documentadas.
3. No Power BI Desktop, crie uma medida por vez a partir de medidas-suporte.dax.
4. Crie as medidas HTML individuais e associe-as ao visual HTML Content.
5. Valide primeiro cartões e checklist com dados fictícios. O chat deve permanecer sem credencial.

Não cole o arquivo de suporte inteiro como se fosse uma única medida. Os arquivos contêm expressões separadas.

## Dados fictícios

[exemplo-cards.pq](../power-query/exemplo-cards.pq) cria uma pequena tabela local para estudar contagens e status. É um exemplo mínimo, não o esquema integral necessário a todas as medidas HTML.

Crie uma Consulta Nula, abra o Editor Avançado e cole o código. O resultado esperado contém três tarefas, uma por status. A demonstração M ainda não foi executada no Power BI.

## Teste visual

Confira totais, percentuais, resposta a filtros e tooltip por card. Uma tabela com três linhas deve ter total 3, concluídas 1 e backlog 2 se o contexto e as classificações estiverem configurados como nas medidas.

A configuração dos segmentadores, marcadores de navegação, tooltip e parâmetros do relatório original não é criada automaticamente pelos arquivos DAX.

## Fontes

- [Visual HTML Content](https://html-content.com/docs/faq).
- [Microsoft Graph: tarefas por bucket](https://learn.microsoft.com/en-us/graph/api/plannerbucket-list-tasks?view=graph-rest-1.0).
- [Proteção de chaves Gemini](https://ai.google.dev/gemini-api/docs/api-key).
