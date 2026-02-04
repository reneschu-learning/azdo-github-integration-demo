---
name: Create Tasks
description: This prompt is used to create Tasks for each Requirement in Azure DevOps.
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools: ['microsoft/azure-devops-mcp/*']
---
Füge bitte passende Tasks zu allen Requirements als Kind-Elemente (Child-Links) hinzu. Die Tasks sollen die notwendigen Entwicklungsschritte abbilden und können technische Informationen beinhalten. Jedes Requirements sollte mindestens einen, besser mehrere Tasks haben, die sich gut iterativ umsetzen lassen.