# Demo for GitHub and Azure DevOps Integration
This repository serves as a demo for the integration of GitHub Copilot with Azure DevOps.

- The project will be / is a Vite project with React and TypeScript.  
  **IMPORTANT:** When setting up the Vite project, you **MUST** keep the existing files in the repository, as they are required for the demo! Do **NOT** delete or modify them unless explicitly instructed to do so!
- When configuring tests with Vite, ensure that test execution outputs results both to the console and in JUnit format, so they can be displayed in Azure DevOps. The JUnit results **must** be stored in the `test-results` directory. Also make sure that the `test-results` directory is added to `.gitignore`, so test results are not accidentally committed to the repository.
- When looking for things like requirements, tasks, Product Backlog Items (PBIs), or similar, **always** use the Azure DevOps MCP Server and the project "IntegrationDemo"!
- When working with the repository remote, **always** use the GitHub MCP Server.
- For local Git operations, **always** use the Git CLI.
- When working with the English version of the demo (i.e., current or base branch is `en-US`), **always** create pull requests to the `en-US` branch. When working with the German version of the demo (i.e., current or base branch is `main`), **always** create pull requests to the `main` branch.

**Important:** If any of the MCP Servers are not available or the Git CLI is missing, inform the user and stop the process! Do **not** try to achieve the goal through other means. You **must** use the MCP Servers and the Git CLI! If the MCP Servers have not been started yet, start them.