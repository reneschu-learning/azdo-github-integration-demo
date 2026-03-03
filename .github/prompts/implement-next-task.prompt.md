---
name: Implement Next Task
description: This prompt implements the next task for a requirement.
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools: ['vscode', 'execute', 'read', 'edit', 'search', 'web', 'context7/*', 'microsoft/azure-devops-mcp/*', 'playwright/*', 'microsoftdocs/mcp/*', 'agent', 'bicep/*', 'todo']
---
Okay, now let's implement the next task. Please perform the following steps:

1. Identify the Product Backlog Item (PBI) currently assigned to me in the "Committed" state in our Azure DevOps backlog.
2. Select the logically next incomplete task for the Product Backlog Item assigned to me in Azure DevOps, set its status to "In Progress", and assign it to me. Make sure the selected task is indeed the next logical step in the implementation.
3. If it does not yet exist, create a new branch in our Git repository that references the parent PBI (e.g., "features/PBI-{PBI-ID}").
4. Implement the task according to the acceptance criteria and the Definition of Done. During implementation, **ALWAYS** ensure that the code is compilable/transpilable and does not cause any errors or warnings in the IDE or build process. Keep correcting the implementation until there are no more errors or warnings.
5. Write unit tests and integration tests where possible to ensure the implementation works correctly. Keep correcting the code and tests until all tests pass successfully. Do not create tests that always pass by default (e.g., by always returning "true")!
6. Run the tests locally to make sure everything works.
7. Commit the changes with a meaningful commit message. Make sure to link the work item in Azure DevOps using the syntax AB#{Task-ID}.
   a. If the commit completes the implementation, use "fix AB#{Task-ID}".
   b. If the commit only represents part of the implementation, use "see AB#{Task-ID}".
8. Push the branch to our remote repository.
9. When the implementation is complete, set the task state in Azure DevOps to "Done". 