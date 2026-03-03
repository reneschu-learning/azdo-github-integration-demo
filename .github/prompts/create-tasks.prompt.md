---
name: Create Tasks
description: This prompt is used to create Tasks for each Requirement in Azure DevOps.
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools: ['microsoft/azure-devops-mcp/*']
---
Please add appropriate tasks to all requirements as child elements (child links). The tasks should represent the necessary development steps and may contain technical information. Each requirement should have at least one, preferably multiple tasks that can be implemented iteratively.