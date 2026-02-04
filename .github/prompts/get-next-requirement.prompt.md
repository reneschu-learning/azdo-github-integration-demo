---
name: Get Next Requirement
description: This prompt helps to identify the next requirement in an Azure DevOps backlog.
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools: ['microsoft/azure-devops-mcp/*']
---
Welches ist das nächste Requirement in unserem Azure DevOps Backlog?

Berücksichtige die Position der Anforderungen im Backlog und wähle ausschließlich Anforderungen im Zustand "Approved" aus. Gibt es keine solche Anforderung, gib bitte eine entsprechende Rückmeldung.