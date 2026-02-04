# Demo für GitHub und Azure DevOps Integration
Dieses Repository dient als Demo für die Integration von GitHub Copilot mit Azure DevOps.

- Das Projekt wird/ist ein Vite-Projekt mit React und TypeScript sein.
- Achte bei der Konfiguration von Tests mit Vite darauf, dass die Testausführung Ergebnisse sowohl auf der Konsole als auch im JUnit-Format ausgibt, damit sie in Azure DevOps angezeigt werden können. Die JUnit-Ergebnisse **müssen** im Verzeichnis `test-results` gespeichert werden. Achte zudem darauf, dass das `test-results` Verzeichnis in die `.gitignore` aufgenommen wird, damit die Testergebnisse nicht versehentlich ins Repository gelangen.
- Wenn Du nach Dingen wie Requirements, Tasks, Product Backlog Items (PBIs) oder ähnlichem suchst, nutze **immer** den Azure DevOps MCP Server und das Projekt "IntegrationDemo"!
- Wenn Du mit dem Repository Remote arbeitest, nutze **immer** den GitHub MCP Server.
- Für lokale Git-Operationen, nutze **immer** die Git CLI.

**Wichtig:** Sollte einer der MCP Server nicht vorhanden sein oder git Git CLI fehlen, informiere den Benutzer und stoppe den Vorgang! Versuche **nicht** über andere Wege das Ziel zu erreichen. Du **musst** die MCP Server und die Git CLI verwenden! Sollten die MCP Server noch nicht gestartet sein, starte sie.