---
name: Create Requirements
description: This prompt is used to create Requirements (Product Backlog Items) in Azure DevOps based on a referenced file.
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools: ['microsoft/azure-devops-mcp/*']
---
Please use the Azure DevOps MCP Server to create Requirements (Product Backlog Items) based on the referenced file. Make sure the requirements are described purely from a user's perspective and do not contain technical details! All requirements must be fully defined so they can be implemented directly. Please create the requirements clearly and understandably, so the development team can implement them without issues.

The requirement description from the user's perspective should go in the "Description" field of the Azure DevOps Work Item, while the acceptance criteria should be documented in the corresponding "Acceptance Criteria" field. Make sure that all long-text fields in Azure DevOps are filled in HTML format, so the formatting is displayed correctly!

**IMPORTANT:** Create the requirements one after another in the correct logical order, so they can be implemented in an iterative development process with incremental value per iteration! If you cannot create them in the correct order, sort the backlog after creation to ensure the logical order is maintained!