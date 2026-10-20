// Demonstração mínima e autônoma; não reconstrói todo o modelo HTML.
let
    Fonte = #table(
        type table [id = text, title = text, percentComplete = text, Board = text],
        {
            {"DEMO-A", "Revisar integração fictícia", "Concluída", "Operações"},
            {"DEMO-B", "Documentar processo fictício", "Em andamento", "Governança"},
            {"DEMO-C", "Planejar teste fictício", "Não iniciado", "Operações"}
        }
    )
in
    Fonte
