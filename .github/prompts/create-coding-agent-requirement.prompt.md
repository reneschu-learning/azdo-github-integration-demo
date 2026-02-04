---
name: Create Coding Agent Requirement
description: This prompt is used to create a new Requirement in Azure DevOps for the GitHub Coding Agent demo.
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools: ['microsoft/azure-devops-mcp/*']
---
Erzeuge ein neues Product Backlog Item mit Hilfe des Azure DevOps MCP Servers im Projekt "IntegrationDemo" mit folgenden Details:

- Titel: "Als Benutzer möchte ich das Aussehen der Bildergalerie anpassen können"
- Beschreibung:
  Als Benutzer möchte ich die Möglichkeit haben, zwischen verschiedenen "Themes" für die Bildergalerie zu wählen, um das Erscheinungsbild an meine Vorlieben anzupassen. Die verfügbaren Themes sollten unterschiedliche Farbpaletten und Layouts bieten, damit ich die Galerie individuell gestalten kann.
- Akzeptanzkriterien:
  1. Es gibt mindestens drei verschiedene Themes zur Auswahl: "Hell", "Dunkel" und "Farbenfroh".
  2. Der Benutzer kann das gewünschte Theme über eine Dropdown-Liste im Einstellungsmenü der Bildergalerie auswählen.
  3. Zusätzlich kann über eine weitere Dropdown-Liste die Spaltenzahl der Galerie ausgewählt werden. Möglich Werte sind zwei, drei, vier oder fünf Spalten.
  4. Nach der Auswahl eines Themes wird die Bildergalerie sofort mit dem neuen Erscheinungsbild aktualisiert, ohne dass die Seite neu geladen werden muss.
  
Nachdem das Product Backlog Item erstellt wurde, gib mir bitte die URL des neuen Items als klickbaren Link zurück.