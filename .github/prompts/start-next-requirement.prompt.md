---
name: Start Next Requirement
description: This prompt assigns the next requirement and its tasks to the user and updates the requirement status to Committed.
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools: ['microsoft/azure-devops-mcp/*']
---
Assign the next requirement and all its tasks to me and set the requirement status to Committed.

The next requirement is specified further below. If not, consider the position of requirements in the backlog and select the next requirement in the "Approved" state. If there is no such requirement, please provide appropriate feedback.

**IMPORTANT:** If the user specifies a specific requirement (e.g., by ID), first check whether this requirement exists and is in the "Approved" state. If so, assign this requirement and the associated tasks and set the requirement status to "Committed". If the requirement does not exist or is not in the "Approved" state, provide appropriate feedback and ask whether the user really wants to proceed with this requirement. Only assign the requirement and tasks and set the status to "Committed" **if the user explicitly confirms**! Otherwise, ask the user whether they want to specify a different requirement or whether they want to be assigned the next available requirement.