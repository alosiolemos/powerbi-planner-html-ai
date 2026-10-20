# Validação e limites

## Conferido

- Extração das oito medidas HTML e das 23 expressões de suporte.
- Remoção da chave Google e substituição da imagem externa de identidade.
- Inventário dos visuais: HTML Content, rosca nativa, tabela/matriz e controles.
- Leitura dos vínculos de calendário e checklist.
- Identificação da diferença entre texto de 100 atividades e TOPN(200).
- Checagem do conteúdo distribuído contra valores sensíveis capturados em memória durante a preparação.

## Não executado

Importação no Power BI, renderização dos visuais, avaliação de DAX/M, atualização Graph e chamadas Gemini. Os arquivos não são um relatório independente.

A tabela de medidas preserva os nomes históricos. Não foram corrigidas silenciosamente as regras de negócio. A revisão para publicação retirou dados de autenticação e identidade; não equivale a uma auditoria integral de segurança do código.

## Relação com a automação

Na parte n8n houve verificação estrutural do JSON, análise sintática dos oito nós Code e testes locais com dados fictícios de normalização, checklist e dois formatadores HTML. Isso não comprova renderização das medidas DAX.

Nenhuma requisição de rede ou mensagem foi enviada por esses testes.
