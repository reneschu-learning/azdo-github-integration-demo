---
name: Implement Next Task
description: This prompt implements the next task for a requirement.
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools: ['vscode', 'execute', 'read', 'edit', 'search', 'web', 'context7/*', 'microsoft/azure-devops-mcp/*', 'playwright/*', 'microsoftdocs/mcp/*', 'agent', 'bicep/*', 'todo']
---
Okay, jetzt implementieren wir die nächste Aufgabe. Bitte führe folgende Schritte aus:

1. Identifiziere das aktuell mir zugewiesene Product Backlog Item (PBI) im Zustand "Committed" in unserem Backlog in Azure DevOps.
2. Wähle den logisch nächsten unerledigten Task zum mir zugewiesenen Product Backlog Item in Azure DevOps aus, setze seinen Status auf "In Progress" und weise ihn mir zu. Stelle dabei sicher, dass der ausgewählte Task tatsächlich der nächste logische Schritt in der Implementierung ist.
3. Falls er noch nicht existiert, erzeuge einen neuen Branch in unserem Git-Repository, der das übergeordnete PBI referenziert (z.B. "features/PBI-{PBI-ID}").
4. Implementiere die Aufgabe gemäß den Akzeptanzkriterien und den Definition of Done. Stelle bei der Implementierung **IMMER** sicher, dass der Code kompilierbar/transpilierbar ist und keine Fehler oder Warnungen in der IDE oder im Build-Prozess verursacht. Korrigiere die Implementierung so lange, bis keine Fehler und Warnungen mehr auftreten.
5. Schreibe wenn möglich Unit-Tests und Integrationstests, um sicherzustellen, dass die Implementierung korrekt funktioniert. Korrigiere den Code und die Tests so lange, bis alle Tests erfolgreich durchlaufen. Erstelle keine Tests, die grundsätzlich erfolgreich sind (z.B. indem sie immer "true" zurückgeben)!
6. Führe die Tests lokal aus, um sicherzustellen, dass alles funktioniert.
7. Committe die Änderungen mit einer aussagekräftigen Commit-Nachricht. Stelle sicher, dass dabei das Work Item in Azure DevOps über die Syntax AB#{Task-ID} verlinkt wird.
   a. Wenn der Commit die Implementierung abschließt, verwende "fix AB#{Task-ID}".
   b. Wenn der Commit nur einen Teil der Implementierung darstellt, verwende "see AB#{Task-ID}".
8. Pushe den Branch zu unserem Remote-Repository.
9. Wenn die Implementierung abgeschlossen ist, setze den Zustand des Tasks in Azure DevOps auf "Done". 