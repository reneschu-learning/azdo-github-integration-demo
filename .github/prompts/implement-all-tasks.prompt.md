---
name: Implement All Tasks
description: This prompt implements all tasks for a requirement.
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools: ['vscode', 'execute', 'read', 'edit', 'search', 'web', 'context7/*', 'microsoftdocs/mcp/*', 'agent', 'bicep/*', 'azure-mcp/search', 'microsoft/azure-devops-mcp/*', 'github-mcp/*', 'todo']
---
Implementiere bitte alle Tasks für das aktuell mir zugewiesene Product Backlog Item (PBI) im Zustand "Committed" in unserem Backlog in Azure DevOps. Nutze für jeden Task die Schritte, die in [Implement Next Task](./implement-next-task.prompt.md) beschrieben sind.

**ACHTUNG:** Bitte implementiere jeden Task nacheinander und befolge **alle** Anweisungen in [Implement Next Task](./implement-next-task.prompt.md) sorgfältig, um sicherzustellen, dass die Implementierung den Anforderungen entspricht! Schreibe Tests immer passend zu jedem Task und nicht erst am Ende der gesamten Implementierung!

Nachdem Du alle Tasks implementiert hast, erzeuge einen Pull Request in unserem Git-Repository auf GitHub, um die Änderungen zu mergen. Beschreibe im Pull Request die vorgenommenen Änderungen und verlinke das übergeordnete PBI in Azure DevOps über die Syntax "fixes AB#{PBI-ID}". Dies schließt das PBI automatisch, sobald der Pull Request gemerged wird.