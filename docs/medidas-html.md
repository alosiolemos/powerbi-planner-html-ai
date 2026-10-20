# Como as medidas constroem a interface

DAX calcula valores no contexto do modelo e concatena texto HTML/CSS. O visual HTML Content interpreta esse texto e o apresenta na página.

## Camadas

1. **Modelo:** tarefas, calendário, detalhes e checklist.
2. **Medidas de suporte:** quantidades, taxas, datas e seleção de indicador.
3. **Medidas HTML:** composição de estrutura visual com os resultados.
4. **Visual de renderização:** apresentação do HTML no Power BI.

## As oito expressões

| Arquivo | Função |
| --- | --- |
| [01-card.dax](../dax/html/01-card.dax) | Painel de indicadores e blocos de categorias |
| [02-tabela.dax](../dax/html/02-tabela.dax) | Estrutura de tabela personalizada |
| [03-header.dax](../dax/html/03-header.dax) | Cabeçalho de tabela |
| [04-grafico-mensal.dax](../dax/html/04-grafico-mensal.dax) | Colunas e rótulos mensais construídos por DAX/HTML |
| [05-titulo.dax](../dax/html/05-titulo.dax) | Identidade visual e última atualização |
| [06-gemini-operations-ai.dax](../dax/html/06-gemini-operations-ai.dax) | Contexto, chat e requisição histórica Gemini |
| [07-icone-ai.dax](../dax/html/07-icone-ai.dax) | Ícone de navegação/acesso |
| [08-tooltip-checklist.dax](../dax/html/08-tooltip-checklist.dax) | Detalhes, status e progresso do checklist |

O [inventário](inventario-html.json) relaciona os nomes originais e os caminhos. O arquivo [medidas-suporte.dax](../dax/medidas-suporte.dax) contém as outras 23 expressões.

## Dependências e contexto

As expressões dependem dos nomes de tabelas, colunas, relações e medidas. Copiar apenas o HTML não fornece automaticamente os dados necessários.

A concatenação do texto pode conservar conteúdo dinâmico de títulos e descrições. Na adaptação com dados próprios, revise escape de aspas, caracteres HTML e serialização antes de renderizar conteúdo de terceiros.

## Renderização e JavaScript

O inventário confirmou o visual HTML Content. Nem toda edição oferece as mesmas capacidades: a edição Secure remove scripts. A execução também depende das restrições do sandbox e das políticas de rede.

Referências: [limitações](https://html-content.com/docs/limitations) e [FAQ do visual](https://html-content.com/docs/faq).

HTML/CSS que apenas desenha cartões não tem os mesmos requisitos do chat, que contém JavaScript e faz uma chamada de rede. Teste cada classe separadamente.

## Alterações para publicação

Credenciais foram removidas, referências de identidade foram adaptadas e a imagem externa de título foi substituída por um ícone genérico em SVG incorporado. O layout e as expressões foram mantidos como referência histórica.

Não foi feita uma refatoração integral das regras nem uma migração do chat para servidor. O arquivo de IA continua identificado como implementação histórica sem chave.
