---
name: Start Next Requirement
description: This prompt assigns the next requirement and its tasks to the user and updates the requirement status to Committed.
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools: ['microsoft/azure-devops-mcp/*']
---
Weise das nächste Requirement und sämtliche Tasks mir zu und setze den Status des Requirements auf Committed.

Das nächste Requirement ist weiter weiter unten spezifiziert. Falls nicht, berücksichtige die Position der Anforderungen im Backlog und wähle die nächste Anforderung im Zustand "Approved" aus. Gibt es keine solche Anforderung, gib bitte eine entsprechende Rückmeldung.

**WICHTIG:** Sollte der Benutzer eine konkrete Anforderung spezifizieren (z.B. über die ID), prüfe zunächst, ob diese Anforderung existiert und im Zustand "Approved" ist. Falls ja, weise diese Anforderung und die zugehörigen Tasks zu und setze den Status der Anforderung auf "Committed". Falls die Anforderung nicht existiert oder nicht im Zustand "Approved" ist, gib eine entsprechende Rückmeldung und frage nach, ob der Benutzer wirklich mit dieser Anforderung fortfahren möchte. Weise die Anforderung und die Tasks nur dann zu und setze den Status auf "Committed", **wenn der Benutzer dies ausdrücklich bestätigt**! Anderenfalls frage den Benutzer, ob er eine andere konkrete Anforderung angeben möchte oder ob er die nächste verfügbare Anforderung zugewiesen bekommen möchte.