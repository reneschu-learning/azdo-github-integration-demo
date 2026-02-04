---
name: Create Requirements
description: This prompt is used to create Requirements (Product Backlog Items) in Azure DevOps based on a referenced file.
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools: ['microsoft/azure-devops-mcp/*']
---
Bitte nutze den Azure DevOps MCP Server um Requirements (Product Backlog Item) basierend auf der referenzierten Datei zu erstellen. Achte darauf, dass die Requirements rein aus der Sicht eines Benutzers beschrieben sind und keine technischen Details beinhalten! Alle Requirements müssen vollständig definiert sein, damit sie direkt umgesetzt werden können. Bitte erstelle die Requirements so, dass sie klar und verständlich sind, damit das Entwicklungsteam sie problemlos umsetzen kann.

Die Beschreibung der Anforderung aus Sicht des Benutzers sollte im Feld "Beschreibung" (Description) des Azure DevOps Work Items stehen, während die Akzeptanzkriterien (Acceptance Criteria) im entsprechenden Feld "Akzeptanzkriterien" (Acceptance Criteria) dokumentiert werden. Achte darauf, dass alle Langtext-Felder in Azure DevOps im HTML-Format ausgefüllt werden, damit die Formatierung korrekt dargestellt wird!

**ACHTUNG:** Erstelle die Requirements nacheinander in der richtigen logischen Reihenfolge, damit sie in einem iterativen Entwicklungsprozess mit inkrementellem Mehrwert pro Iteration umgesetzt werden können! Falls Du sie nicht in der richtigen Reihenfolge erstellen kannst, sortiere das Backlog nach der Erstellung so, dass die logische Reihenfolge gewährleistet ist!