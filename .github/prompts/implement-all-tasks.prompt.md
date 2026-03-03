---
name: Implement All Tasks
description: This prompt implements all tasks for a requirement.
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools: ['vscode', 'execute', 'read', 'edit', 'search', 'web', 'context7/*', 'microsoftdocs/mcp/*', 'agent', 'bicep/*', 'azure-mcp/search', 'microsoft/azure-devops-mcp/*', 'github-mcp/*', 'todo']
---
Please implement all tasks for the Product Backlog Item (PBI) currently assigned to me in the "Committed" state in our Azure DevOps backlog. For each task, follow the steps described in [Implement Next Task](./implement-next-task.prompt.md).

**IMPORTANT:** Please implement each task one after another and follow **all** instructions in [Implement Next Task](./implement-next-task.prompt.md) carefully, to ensure the implementation meets the requirements! Always write tests for each individual task, not just at the end of the entire implementation!

After you have implemented all tasks, create a pull request in our Git repository on GitHub to merge the changes. In the pull request, describe the changes made and link the parent PBI in Azure DevOps using the syntax "fixes AB#{PBI-ID}". This will automatically close the PBI once the pull request is merged.