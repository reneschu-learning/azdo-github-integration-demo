# Azure DevOps and GitHub Integration - Demo
This demo showcases the following aspects of the integration between Azure DevOps and GitHub:

- Using GitHub Copilot and the Azure DevOps MCP Server to create requirements and associated tasks.
- Implementing tasks with GitHub Copilot.
- Managing code in GitHub repositories with links to Azure Boards work items.
- Automating builds and deployments with Azure Pipelines.
- Using the GitHub Coding Agent for autonomous feature implementation based on Azure Boards work items.

## Table of Contents
- [Prerequisites](#prerequisites)
- [What Can Be Demonstrated?](#what-can-be-demonstrated)
  - [Unified Licensing](#unified-licensing)
  - [Creating Product Backlog Items](#creating-product-backlog-items)
  - [Breaking Down Requirements into Tasks](#breaking-down-requirements-into-tasks)
  - [Finding the Next Requirement](#finding-the-next-requirement)
  - [Picking Up the Next Requirement](#picking-up-the-next-requirement)
  - [Implementing Tasks](#implementing-tasks)
  - [Copilot Code Review in GitHub](#copilot-code-review-in-github)
  - [Autonomous Implementation with GitHub Coding Agent](#autonomous-implementation-with-github-coding-agent)
  - [Build and Deployment Automation with Azure Pipelines](#build-and-deployment-automation-with-azure-pipelines)


## Prerequisites
- Azure DevOps organization and GitHub Enterprise (EMU) connected to the same Entra tenant.
- A project in Azure DevOps.
- An organization with a GitHub repository.
- Integration of Azure DevOps and GitHub with an active connection between the Azure DevOps project and the GitHub repository.
- Autolink references configured in the GitHub repository (AB#123 points to https://dev.azure.com/ORG/PROJECT/_workitems/edit/123).
- GitHub Copilot and GitHub Coding Agent enabled for the users.
- Azure DevOps MCP Server configured locally.

[:back: back](#table-of-contents)

## What Can Be Demonstrated?
This demo creates a simple static website with an image gallery. The requirements for the website are created as Product Backlog Items in Azure DevOps, broken down into tasks, and then implemented using GitHub Copilot. The code is managed in a GitHub repository linked to Azure DevOps, providing full traceability between requirements, tasks, and code changes:

![Demo Application](./assets/FinalSolution.png)

Many demos use the Azure DevOps MCP Server for interaction between GitHub Copilot and Azure DevOps. Several pre-built prompts have been created for this purpose, which can be found in this repository under `./.github/prompts/`. The individual demos reference the necessary prompt files.

**Important:** Before running the demo, the Azure DevOps MCP Server should be started locally. Afterward, you should make a query in Copilot, e.g., "Which projects in Azure DevOps do I have access to?", since the first request will require browser-based authentication. Make sure to use the same Entra identity that is also used to access Azure DevOps and GitHub, to ensure smooth integration. If this initial query is not made before the demo, the MCP Server may generate many authentication requests in parallel, which can cause confusion!

### Unified Licensing
Users work with their Entra identity to access both platforms. In the user overview in Azure DevOps, GitHub Enterprise users are displayed, and licenses are assigned accordingly:

![Unified Licensing](./assets/CrossLicensingAzDOGitHub.png)

[:back: back](#table-of-contents)

### Basic GitHub Copilot Configuration for Azure DevOps and GitHub
To make the most of the integration between GitHub Copilot and Azure DevOps, some context information should be provided in the file [./.github/copilot-instructions.md](./.github/copilot-instructions.md). This information is then available in all prompts and enables GitHub Copilot to formulate responses accordingly.

In this demo, for example, the use of MCP Servers is explicitly referenced so that prompts can be formulated more easily.

[:back: back](#table-of-contents)

### Creating Product Backlog Items
For the demo, requirements for a static website with an image gallery were created using the Planning Agent (not part of the demo). These are documented in the file [requirements.md](./requirements.md).

**Note:** The planning process can be reviewed in the file [requirements-planning.md](./chats/requirements-planning.md), if needed.

The prompt in the file [./.github/prompts/create-requirements.prompt.md](./.github/prompts/create-requirements.prompt.md) can be used to create the previously planned requirements as Product Backlog Items in Azure DevOps.

```
Prompt: /create-requirements for file #requirements.md
```

As a result, five Product Backlog Items should be created in Azure DevOps that correspond to the requirements from the file. Unlike the `requirements.md` file, the items are formulated as user stories and do not contain technical details (see the prompt file).

![Created Product Backlog Items in Azure DevOps](./assets/Requirements.png)
![Details of a Product Backlog Item](./assets/RequirementDetails.png)

After creating the Product Backlog Items, they should be set to the "Approved" state. In a real scenario, a Product Owner would review the requirements and decide whether they are valid ("Approved" state), need rework, or are irrelevant ("Removed" state). Additionally, you may notice that Copilot does not always choose the optimal order for the requirements, and they may need to be reordered in the backlog accordingly.

[:back: back](#table-of-contents)

### Breaking Down Requirements into Tasks
After the Product Backlog Items have been created, they can be broken down into tasks using another prompt in the file [./.github/prompts/create-tasks.prompt.md](./.github/prompts/create-tasks.prompt.md).

```
Prompt: /create-tasks
```

As a result, multiple tasks should be created as child links in Azure DevOps for each Product Backlog Item, representing the necessary development steps and containing technical information. The tasks should be formulated so that they can be implemented iteratively (see the prompt file).

![Decomposed Tasks in Azure DevOps](./assets/Tasks.png)
![Details of a Task](./assets/TaskDetails.png)

[:back: back](#table-of-contents)

### Finding the Next Requirement
Using the prompt in the file [./github/prompts/get-next-requirement.prompt.md](./.github/prompts/get-next-requirement.prompt.md), the next open requirement (Product Backlog Item) can be queried.

```
Prompt: /get-next-requirement
```

Of course, other formulations can also be used. For simplicity, this demo does not work with sprints, although GitHub Copilot would typically also consider sprint membership if this information is maintained in Azure DevOps. In a real scenario, the prompt would explicitly reference requirements in the "Committed" state that are in the current sprint of a specific team. The team should ideally be specified in the general context information in the file [./.github/copilot-instructions.md](./.github/copilot-instructions.md), so it is available in all prompts.

[:back: back](#table-of-contents)

### Picking Up the Next Requirement
When you want to work on a requirement, you can use the prompt in the file [./github/prompts/start-next-requirement.prompt.md](./.github/prompts/start-next-requirement.prompt.md). You can either pick up a specific requirement or simply get the next open requirement to work on. In both cases, the necessary information about the requirement is retrieved and added to the context, so it is available for the subsequent implementation.

**Pick up the next available requirement:**
```
Prompt: /start-next-requirement
```

**Pick up a specific requirement:**
```
Prompt: /start-next-requirement PBI 123
```

The prompt takes into account that only requirements in the "Approved" state should be picked up. You can demonstrate this by manually creating a new PBI in the "New" state and then trying to pick it up with the prompt. GitHub Copilot should then refuse to pick up this requirement because it does not meet the criteria. In a real scenario, you might only pick up items from the current sprint or add additional steps (e.g., adding to the sprint). Alternatively, you could also use a custom field or state representing refinement, so that only "ready" requirements can be picked up.

After execution, you can show in Azure DevOps that the requirement and all child tasks have been assigned to the current user and that the requirement is indeed in the "Committed" state.

![Picked Up Requirement in Azure DevOps](./assets/StartedRequirement.png)

[:back: back](#table-of-contents)

### Implementing Tasks
After picking up a requirement, the next open task for the assigned requirement can be implemented using the prompt in the file [./.github/prompts/implement-next-task.prompt.md](./.github/prompts/implement-next-task.prompt.md). The prompt guides you through the necessary steps to implement the task on a new feature branch, test it, and then commit and push the changes.

```
Prompt: /implement-next-task
```

![Copilot's Implementation Plan](./assets/ImplementationPlan.png)
![Implementation Started](./assets/ImplementationStarted.png)

Once a task has been implemented, you can demonstrate full traceability between Azure DevOps and GitHub. The task contains links to the commits in the GitHub repository, and the commits contain matching references in the format "AB#123" to the task in Azure DevOps. If autolink references are correctly configured, you can navigate directly from GitHub to the linked work items in Azure DevOps.

![Complete Commit on a Feature Branch](./assets/ImplementationCommit.png)
![Completed Task...](./assets/ImplementationFinished.png)
![...with Links to the Commits](./assets/TaskWithLinkToGitHub.png)

Alternatively, you can ask GitHub Copilot to implement all open tasks in the correct order. The prompt [./.github/prompts/implement-all-tasks.prompt.md](./.github/prompts/implement-all-tasks.prompt.md) can be used for this. The prompt also ensures that tasks are processed sequentially and that multiple implementations are not combined.

```
Prompt: /implement-all-tasks
```

When using this prompt, you can also demonstrate how GitHub Copilot completes the implementation of an entire requirement with a pull request via the GitHub MCP Server and cleanly links it to the requirement in Azure DevOps.

![Pull Request in GitHub Linked to the Requirement in Azure DevOps](./assets/PullRequest.png)
![Link to the Pull Request in Azure DevOps](./assets/WorkItemLinkedToPullRequest.png)

[:back: back](#table-of-contents)

### Copilot Code Review in GitHub
In a created pull request (e.g., via the prompt `/implement-all-tasks`), you can add GitHub Copilot as a reviewer and demonstrate the process.

![Add GitHub Copilot as Reviewer](./assets/AddCopilotAsReviewer.png)
![GitHub Copilot Code Review](./assets/CopilotCodeReview.png)
![Improvement Suggestion from GitHub Copilot](./assets/CopilotCodeReviewSuggestion.png)

[:back: back](#table-of-contents)

### Autonomous Implementation with GitHub Coding Agent
With the integration of Azure DevOps and GitHub, it is possible to use the GitHub Coding Agent to autonomously implement features based on Azure Boards work items. For this, the work items need to be formulated with sufficient context for implementation. Using the prompt in the file [./.github/prompts/create-coding-agent-requirement.prompt.md](./.github/prompts/create-coding-agent-requirement.prompt.md), you can create a requirement without tasks (the Coding Agent always works on a single work item, not on a work item hierarchy):

```
Prompt: /create-coding-agent-requirement
```

You can then show this requirement in Azure DevOps, set it to the "Committed" state (not strictly required), and then hand it over to the Coding Agent via the *Create a pull request with GitHub Copilot* button:

![Requirement for Coding Agent](./assets/AssignToCodingAgent.png)
![Hand Over Task to Coding Agent - Step 2](./assets/AssignToCodingAgentStep2.png)

**Note:** In the future, custom agents will also be selectable in the second step.

The status of the Coding Agent is visible directly in Azure DevOps:

![Coding Agent Status in Azure DevOps](./assets/CodingAgentWorking.png)

Additionally, you can follow the Coding Agent's progress directly in GitHub:

![Coding Agent Progress in GitHub](./assets/CodingAgentPullRequest.png)

[:back: back](#table-of-contents)

### Build and Deployment Automation with Azure Pipelines
To demonstrate build and deployment automation with Azure Pipelines, some preparations need to be made first:

1. Prepare the Azure environment
   - Create an Azure subscription as the deployment target.
   - Create a service principal with the required permissions for the subscription. For simplicity, this demo assumes the service principal receives the *Contributor* role, so necessary resources (including the Resource Group) can be created automatically by the pipeline. This can also be done via the Azure CLI:
     ```
     az ad sp create-for-rbac --name <ServicePrincipalName> --role Contributor --scopes /subscriptions/<SubscriptionId>
     ```

2. Create a Service Connection in Azure DevOps
   - Create a new Service Connection in the Azure DevOps project of type "Azure Resource Manager" with Workload Identity Federation (OIDC) (see https://learn.microsoft.com/en-us/azure/devops/pipelines/release/configure-workload-identity?view=azure-devops&tabs=app-registration).

Once the necessary preparations have been made, the pre-built pipeline in the file [./.pipelines/ci-cd.yaml](./.pipelines/ci-cd.yaml) can be activated. The pipeline can be used in the following ways:

1. Manually via the Azure DevOps UI, to demonstrate the process.
2. As a pull request gate, executed in every pull request to the main branch. To enable this, uncomment/remove the `pr` trigger on line 17 and activate the trigger on lines 20 to 31. The trigger definition would then look as follows:
   ```yaml
   pr:
     branches:
       include:
         - main
     paths:
       exclude:
         - .github/**
         - .pipelines/**
         - .vscode/**
         - assets/**
         - chats/**
         - README.md
   ```

   ![Pipeline as Pull Request Gate](./assets/PullRequestBuild.png)
   ![Build Status in Pull Request](./assets/PullRequestChecks.png)

3. As a CI/CD pipeline, automatically triggered on every merge to the main branch. To enable this, uncomment/remove the trigger on line 1 and activate the trigger on lines 4 to 15. The trigger definition would then look as follows:
   ```yaml
   trigger:
     branches:
       include:
         - main
     paths:
       exclude:
         - .github/**
         - .pipelines/**
         - .vscode/**
         - assets/**
         - chats/**
         - README.md
   ```

   Additionally, on line 53, the name of the previously created Service Connection must be entered in place of the placeholder `<your-service-connection>`, so the pipeline can connect to Azure and create the necessary resources.

   ![Pipeline as CI/CD Pipeline](./assets/CICDBuild.png)

The pipeline is configured to execute different steps depending on the trigger:
- `Build` stage - always executed  
  Installs and activates the required Node.js version, installs dependencies, runs the build and tests, and creates a build artifact for later deployment.
- `IaC` stage - only on the `main` branch  
  Creates the necessary infrastructure in Azure using Bicep (Resource Group and Static Web App) and prepares variables for the application deployment.
- `Deploy` stage - only on the `main` branch  
  Deploys the application to the previously created Azure Static Web App and outputs the website URL in the log at the end.

[:back: back](#table-of-contents)