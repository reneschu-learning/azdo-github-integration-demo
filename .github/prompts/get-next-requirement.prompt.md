---
name: Get Next Requirement
description: This prompt helps to identify the next requirement in an Azure DevOps backlog.
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools: ['microsoft/azure-devops-mcp/*']
---
What is the next requirement in our Azure DevOps backlog?

Consider the position of the requirements in the backlog and select only requirements in the "Approved" state. If there is no such requirement, please provide appropriate feedback.