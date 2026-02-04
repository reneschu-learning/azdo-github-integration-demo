User: Ich möchte eine Webseite mit einer Bildergalerie erstellen. Die Seite soll als statische Webseite mit HTML/CSS, React und TypeScript gebaut sein. Die Galerie soll in einem Raster mit drei Spalten angezeigt werden und ein Feld mit einem Plus-Zeichen enthalten, über das neue Bilder hinzugefügt werden können. Die Bilder sollen bei Mouse Over leicht wackeln und beim Rechtsklick ein kleines Kontextmenü anzeigen, dass es erlaubt, das Bild aus der Galerie zu entfernen. Alle Bilder sollen aus einem öffentlichen Service für zufällige Bilder stammen, kein Upload oder ähnliches soll genutzt werden. Bitte hilf mir, sinnvolle Requirements dafür zu erstellen, die einen iterativen Entwicklungsprozess abbilden.

GitHub Copilot: Ich helfe dir gerne, einen Plan für die Requirements-Erstellung zu erstellen. Lass mich zuerst den aktuellen Workspace-Kontext analysieren. 

Read [](file:///d%3A/temp/utm/Demo.md)

Read [](file:///d%3A/temp/utm)

Research React image gallery tech stack

Using "Fetch Web Page"

Fetched 3 resources

Using "Fetch Web Page"

Fetched 2 resources

Using "Fetch Web Page"

Fetched 2 resources

Using "Fetch Web Page"

Fetched 2 resources

## Plan: Iterative Requirements für React-TypeScript Bildergalerie

Eine Bildergalerie-Webseite mit React/TypeScript, die in mehreren Iterationen entwickelt wird. Jede Iteration baut auf der vorherigen auf und liefert inkrementellen Mehrwert mit klaren Akzeptanzkriterien.

### Steps

1. **Iteration 1: Basis-Setup & statisches Grid** - Projekt-Setup mit Vite/React/TypeScript, statisches 3-Spalten CSS Grid mit Platzhalterbildern von Lorem Picsum, grundlegendes Styling
2. **Iteration 2: Dynamisches Hinzufügen** - Plus-Button implementieren, Click-Handler zum Hinzufügen neuer Bilder aus Lorem Picsum API, State-Management mit useState für Bildliste
3. **Iteration 3: Hover-Animation** - CSS @keyframes Wackel-Animation erstellen, auf Mouse Over triggern, smooth transitions für bessere UX
4. **Iteration 4: Kontextmenü & Löschen** - onContextMenu Event Handler, Custom Context Menu Komponente, Löschen-Funktion für Bilder aus dem State
5. **Iteration 5: Polish & Responsive** - Responsive Grid für Mobile, Accessibility (Keyboard-Navigation), Edge Cases (leere Galerie, Ladeanimationen)

### Further Considerations

1. **State-Persistence**: Sollen die Bilder im LocalStorage gespeichert werden, damit sie nach Reload erhalten bleiben? Oder jedes Mal neu starten?
2. **API-Service**: Lorem Picsum (kein API-Key) vs. Unsplash API (höhere Qualität, aber Registrierung nötig)? Für eine Demo ist Lorem Picsum empfohlen.
3. **Build-Tool**: Vite (modern, schnell) oder Create React App (bewährt, aber langsamer)? Vite wird für neue Projekte empfohlen.

User: Bilder werden nicht persistiert, da es sich nur um eine Demo handel. Deswegen nehmen wir die Bilder auch von Lorem Picsum. Als Build-Tool verwenden wir Vite.

GitHub Copilot: ## Plan: Iterative Requirements für React-TypeScript Bildergalerie

Eine Bildergalerie-Webseite mit React/TypeScript und Vite, die in fünf Iterationen entwickelt wird. Bilder werden nicht persistiert (reine Demo), Lorem Picsum liefert zufällige Bilder ohne API-Key.

### Steps

1. **Iteration 1: Vite-Setup & statisches Grid** - Vite-Projekt mit React-TypeScript Template erstellen, CSS Grid Layout mit `grid-template-columns: repeat(3, 1fr)`, 6-8 initiale Platzhalterbilder von Lorem Picsum (z.B. `https://picsum.photos/300/300?random=1`)
2. **Iteration 2: Plus-Button & Bilder hinzufügen** - Plus-Kachel als Grid-Item rendern, onClick Handler fügt neue Lorem Picsum URL zum State hinzu, eindeutige IDs/Seeds für Bilder generieren
3. **Iteration 3: Wackel-Animation bei Hover** - CSS @keyframes mit `rotate(-2deg)` bis `rotate(2deg)`, Animation auf `.image-card:hover` triggern, 0.3s Duration für smooth effect
4. **Iteration 4: Rechtsklick-Kontextmenü** - onContextMenu Event mit `preventDefault()`, Context Menu Component an Cursor-Position (`pageX/pageY`), "Entfernen"-Option filtert Bild aus State
5. **Iteration 5: Responsive & Polish** - Media Queries für 2 Spalten (Tablet) und 1 Spalte (Mobile), Hover-Feedback für Plus-Button, Close-on-outside-click für Kontextmenü

### Further Considerations

1. **Initiale Bildanzahl**: Soll die Galerie leer starten oder mit z.B. 6 Beispielbildern vorausgefüllt sein?
2. **Bild-Dimensionen**: Quadratische Bilder (300x300) oder Rechteckig? Lorem Picsum unterstützt beide Formate.
3. **Animation-Details**: Nur Rotation-Wackeln oder zusätzlich leichtes Scale (`transform: scale(1.05)`)?

User: Initial sollen fünf Bilder vorhanden sein und die Bilder sollen immer quadratisch sein. Zusätzlich sollten die Bilder wie Polaroid-Fotos gestaltet sein (schmaler weißer Rand links, oben und rechts, breiterer weißer Rand unten, dünner Rahmen und ggf. Schattierung). Die Animation soll nur rotieren (wobble).

GitHub Copilot: ## Plan: Iterative Requirements für React-TypeScript Bildergalerie

Eine Bildergalerie-Webseite mit React/TypeScript und Vite im Polaroid-Stil. Initial 5 quadratische Bilder von Lorem Picsum, keine Persistierung (Demo-Zweck).

### Steps

1. **Iteration 1: Vite-Setup & Polaroid-Grid** - Vite-Projekt mit React-TypeScript Template (`npm create vite@latest`), CSS Grid mit 3 Spalten, 5 initiale Bilder von Lorem Picsum (300x300), Polaroid-Styling: padding (10px top/left/right, 40px bottom), border (1px solid #ddd), box-shadow für Tiefe
2. **Iteration 2: Plus-Button & Bilder hinzufügen** - Plus-Kachel als Polaroid-Card mit zentriertem +-Symbol, onClick generiert neue Lorem Picsum URL mit eindeutigem Random-Seed/Timestamp, State-Update fügt Bild zur Galerie hinzu
3. **Iteration 3: Wobble-Animation bei Hover** - CSS @keyframes `wobble` mit `rotate(-3deg)` → `rotate(3deg)` → `rotate(0deg)`, auf `.polaroid-card:hover` triggern, 0.4s ease-in-out, transform-origin für natürliche Rotation
4. **Iteration 4: Rechtsklick-Kontextmenü** - onContextMenu auf Polaroid-Cards, preventDefault() für natives Menü, custom Context Menu Component positioniert bei Cursor, "Bild entfernen" filtert Item aus State-Array
5. **Iteration 5: Responsive & UX-Polish** - Media Queries (2 Spalten ≤768px, 1 Spalte ≤480px), Hover-State für Plus-Button (opacity/scale), Click-outside-Handler schließt Kontextmenü, ESC-Key schließt Menü

### Further Considerations

1. **Polaroid-Ästhetik**: Soll jedes Bild eine leichte zufällige Rotation haben (±2-5°) für realistischeren Polaroid-Look im Ruhezustand?
2. **Plus-Button Position**: Immer am Ende der Galerie oder fixiert an einer bestimmten Position (z.B. oben rechts)?
3. **Bildgröße**: 300x300px ausreichend oder größere Auflösung für moderne Displays (z.B. 400x400)?

User: Die Idee mit der Polaroid-Ästhetik finde ich gut, bitte so machen! Der Plus-Button soll immer am Ende der Galerie stehen und dieselbe Größe wie ein Polaroid aber einen gestrichelten Rahmen haben. Die Größe 300x300px ist vollkommen ausreichend.

GitHub Copilot: ## Plan: Iterative Requirements für React-TypeScript Bildergalerie

Eine Bildergalerie-Webseite mit React/TypeScript und Vite im Polaroid-Stil. Initial 5 quadratische Bilder (300x300px) von Lorem Picsum, keine Persistierung.

### Steps

1. **Iteration 1: Vite-Setup & Polaroid-Grid** - Vite-Projekt mit React-TypeScript Template, CSS Grid mit `repeat(3, 1fr)`, 5 initiale Bilder von Lorem Picsum (`https://picsum.photos/300/300?random={seed}`), Polaroid-Styling: padding (12px top/left/right, 45px bottom), border (1px solid #e0e0e0), box-shadow (`0 4px 8px rgba(0,0,0,0.1)`), zufällige Rotation pro Bild (±2-5° via inline style oder CSS variable)
2. **Iteration 2: Plus-Button am Galerie-Ende** - Plus-Kachel als letztes Grid-Item, gleiche Dimensionen wie Polaroid-Card, gestrichelter Rahmen (`border: 2px dashed #ccc`), zentriertes +-Symbol (Font-Size 48px), onClick fügt neues Bild mit eindeutigem Random-Seed zum State hinzu
3. **Iteration 3: Wobble-Animation bei Hover** - CSS @keyframes mit `rotate()` relativ zur initialen Rotation, Animation nur auf Polaroid-Bildern (nicht auf Plus-Button), 0.4s ease-in-out, sanftes Wackeln ±3° von Ausgangsrotation
4. **Iteration 4: Rechtsklick-Kontextmenü** - onContextMenu nur auf Bild-Cards (nicht auf Plus-Button), `e.preventDefault()` blockiert natives Menü, Context Menu Component an `(e.pageX, e.pageY)` positioniert, "Bild entfernen" Option filtert Bild-ID aus State
5. **Iteration 5: Responsive & UX-Details** - Media Queries (≤768px: 2 Spalten, ≤480px: 1 Spalte), Plus-Button Hover-Effekt (opacity: 0.7, leichtes scale), Click-outside schließt Kontextmenü, ESC-Key schließt Menü, Cursor-Pointer auf interaktiven Elementen

### Further Considerations

1. **Initiale Rotationen**: Sollen beim Neuladen zufällig neu generiert werden oder fest pro Bild-Seed? Zufällig bei jedem Mount empfohlen für natürlichen Look.
2. **TypeScript Interfaces**: `interface PolaroidImage { id: string; seed: number; rotation: number }` für typsicheres State-Management?
3. **Accessibility**: Aria-Labels für Plus-Button ("Neues Bild hinzufügen") und Kontextmenü-Items?

User: Die Rotation ist beim neu Laden immer zufällig, das ist okay. Die Interface-Definition möchte ich in den Requirements nicht spezifizieren, da sie aus Sicht des Benutzers definiert sein und keine technischen Details behinhalten sollen. Accessibility wäre gut!

GitHub Copilot: ## Plan: Iterative Requirements für React-TypeScript Bildergalerie

Eine Bildergalerie-Webseite mit React/TypeScript und Vite im Polaroid-Stil. Initial 5 quadratische Bilder (300x300px) von Lorem Picsum, keine Persistierung, barrierefrei.

### Steps

1. **Iteration 1: Vite-Setup & Polaroid-Grid** - Vite-Projekt mit React-TypeScript Template, CSS Grid mit `repeat(3, 1fr)`, 5 initiale Bilder von Lorem Picsum (`https://picsum.photos/300/300?random={seed}`), Polaroid-Styling: padding (12px top/left/right, 45px bottom), border (1px solid #e0e0e0), box-shadow, zufällige Rotation pro Bild (±2-5°)
2. **Iteration 2: Plus-Button am Galerie-Ende** - Plus-Kachel als letztes Grid-Item, gleiche Dimensionen wie Polaroid, gestrichelter Rahmen (`2px dashed #ccc`), zentriertes +-Symbol, onClick fügt neues Bild mit eindeutigem Random-Seed hinzu, aria-label "Neues Bild hinzufügen"
3. **Iteration 3: Wobble-Animation bei Hover** - CSS @keyframes mit `rotate()` relativ zur initialen Rotation (±3°), Animation nur auf Polaroid-Bildern, 0.4s ease-in-out, sanftes Wackeln von Ausgangsrotation
4. **Iteration 4: Rechtsklick-Kontextmenü** - onContextMenu auf Bild-Cards mit `preventDefault()`, Context Menu Component an Cursor-Position, "Bild entfernen" Option, aria-label für Kontextmenü-Optionen, Keyboard-Navigation (Tab, Enter) für Barrierefreiheit
5. **Iteration 5: Responsive & UX-Details** - Media Queries (≤768px: 2 Spalten, ≤480px: 1 Spalte), Plus-Button Hover-Effekt (opacity: 0.7), Click-outside schließt Kontextmenü, ESC-Key schließt Menü, Cursor-Pointer, Focus-Styles für Tastatur-Navigation

### Further Considerations

1. **Kontextmenü-Trigger**: Soll das Kontextmenü zusätzlich per Tastatur aufrufbar sein (z.B. Shift+F10 oder Kontextmenü-Taste)? Empfohlen für vollständige Accessibility.
2. **Screen-Reader**: Sollen Bilder alt-Text erhalten (z.B. "Zufälliges Bild {nummer}")? Wichtig für barrierefreie Nutzung.

User: Für die Demo unterstützen wir nur die Maus, keine Tastaturkürzel. Alt-Text sollte vorhanden sein.

GitHub Copilot: ## Plan: Iterative Requirements für React-TypeScript Bildergalerie

Eine Bildergalerie-Webseite mit React/TypeScript und Vite im Polaroid-Stil. Initial 5 quadratische Bilder (300x300px) von Lorem Picsum, keine Persistierung, Alt-Text für Screen-Reader.

### Steps

1. **Iteration 1: Vite-Setup & Polaroid-Grid** - Vite-Projekt mit React-TypeScript Template, CSS Grid mit `repeat(3, 1fr)`, 5 initiale Bilder von Lorem Picsum (`https://picsum.photos/300/300?random={seed}`), Polaroid-Styling: padding (12px top/left/right, 45px bottom), border (1px solid #e0e0e0), box-shadow, zufällige Rotation pro Bild (±2-5°), alt-Text "Bild {nummer}"
2. **Iteration 2: Plus-Button am Galerie-Ende** - Plus-Kachel als letztes Grid-Item, gleiche Dimensionen wie Polaroid, gestrichelter Rahmen (`2px dashed #ccc`), zentriertes +-Symbol, onClick fügt neues Bild mit eindeutigem Random-Seed hinzu, cursor: pointer, aria-label "Neues Bild hinzufügen"
3. **Iteration 3: Wobble-Animation bei Hover** - CSS @keyframes mit `rotate()` relativ zur initialen Rotation (±3°), Animation nur auf Polaroid-Bildern, 0.4s ease-in-out, sanftes Wackeln beim Mouse Over
4. **Iteration 4: Rechtsklick-Kontextmenü** - Rechtsklick auf Bild-Cards öffnet Context Menu mit `preventDefault()`, Menü an Cursor-Position (`pageX/pageY`), "Bild entfernen" Option per Linksklick, Menü schließt nach Aktion oder Click-outside
5. **Iteration 5: Responsive & UX-Details** - Media Queries (≤768px: 2 Spalten, ≤480px: 1 Spalte), Plus-Button Hover-Effekt (opacity: 0.7), Click-outside schließt Kontextmenü, cursor: pointer auf interaktiven Elementen

### Further Considerations

1. **Alt-Text Nummerierung**: Durchlaufende Nummerierung "Bild 1", "Bild 2" etc. oder eindeutige IDs? Durchlaufend ist nutzerfreundlicher für Screen-Reader.
2. **Kontextmenü-Styling**: Minimalistisch (weißer Hintergrund, border, shadow) oder im Polaroid-Stil gestaltet?

User: Bitte durchlaufend numerieren und Kontextmenü ebenfalls im Polaroid-Stil halten.

GitHub Copilot: ## Plan: Iterative Requirements für React-TypeScript Bildergalerie

Eine Bildergalerie-Webseite mit React/TypeScript und Vite im Polaroid-Stil. Initial 5 quadratische Bilder (300x300px) von Lorem Picsum, keine Persistierung, Alt-Text für Screen-Reader.

### Steps

1. **Iteration 1: Vite-Setup & Polaroid-Grid** - Vite-Projekt mit React-TypeScript Template, CSS Grid mit `repeat(3, 1fr)`, 5 initiale Bilder von Lorem Picsum (`https://picsum.photos/300/300?random={seed}`), Polaroid-Styling: padding (12px top/left/right, 45px bottom), border (1px solid #e0e0e0), box-shadow, zufällige Rotation pro Bild (±2-5°), alt-Text mit durchlaufender Nummerierung "Bild 1", "Bild 2" etc.
2. **Iteration 2: Plus-Button am Galerie-Ende** - Plus-Kachel als letztes Grid-Item, gleiche Dimensionen wie Polaroid, gestrichelter Rahmen (`2px dashed #ccc`), zentriertes +-Symbol, onClick fügt neues Bild hinzu, cursor: pointer, aria-label "Neues Bild hinzufügen", neue Bilder erhalten fortlaufende Nummer
3. **Iteration 3: Wobble-Animation bei Hover** - CSS @keyframes mit `rotate()` relativ zur initialen Rotation (±3°), Animation nur auf Polaroid-Bildern (nicht auf Plus-Button), 0.4s ease-in-out, sanftes Wackeln beim Mouse Over
4. **Iteration 4: Rechtsklick-Kontextmenü** - Rechtsklick auf Bild-Cards öffnet Context Menu mit `preventDefault()`, Menü an Cursor-Position, Polaroid-Styling (weißer Hintergrund, border 1px solid #e0e0e0, box-shadow), "Bild entfernen" Option per Linksklick, Menü schließt nach Aktion oder Click-outside
5. **Iteration 5: Responsive & UX-Details** - Media Queries (≤768px: 2 Spalten, ≤480px: 1 Spalte), Plus-Button Hover-Effekt (opacity: 0.7), Click-outside schließt Kontextmenü, cursor: pointer auf interaktiven Elementen, Alt-Text-Nummerierung passt sich dynamisch an aktuelle Bildanzahl an

### Further Considerations

Der Plan ist vollständig definiert und bereit zur Umsetzung. Alle Requirements sind aus Nutzersicht beschrieben und ermöglichen einen iterativen Entwicklungsprozess mit inkrementellem Mehrwert pro Iteration.

User: #createFile the plan as is into an untitled file (`untitled:plan-${camelCaseName}.prompt.md` without frontmatter) for further refinement.

GitHub Copilot: Created [](untitled:plan-reactPolaroidGallery.prompt.md)

Plan wurde als `plan-reactPolaroidGallery.prompt.md` erstellt und kann nun weiter verfeinert werden.

Made changes.