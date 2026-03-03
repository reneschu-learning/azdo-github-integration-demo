---
name: Create Coding Agent Requirement
description: This prompt is used to create a new Requirement in Azure DevOps for the GitHub Coding Agent demo.
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools: ['microsoft/azure-devops-mcp/*']
---
Create a new Product Backlog Item using the Azure DevOps MCP Server in the project "IntegrationDemo" with the following details:

- Title: "As a user, I want to be able to customize the appearance of the image gallery"
- Description:
  As a user, I want the ability to choose between different "themes" for the image gallery, so I can adjust the appearance to my preferences. The available themes should offer different color palettes and layouts, allowing me to personalize the gallery.
- Acceptance Criteria:
  1. There are at least three different themes to choose from: "Light", "Dark", and "Colorful".
  2. The user can select the desired theme via a dropdown list in the image gallery settings menu.
  3. Additionally, the number of gallery columns can be selected via another dropdown list. Possible values are two, three, four, or five columns.
  4. After selecting a theme, the image gallery is immediately updated with the new appearance without requiring a page reload.
  
After the Product Backlog Item has been created, please return the URL of the new item as a clickable link.