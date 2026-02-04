# Plan: Iterative Requirements für React-TypeScript Bildergalerie

Eine Bildergalerie-Webseite mit React/TypeScript und Vite im Polaroid-Stil. Initial 5 quadratische Bilder (300x300px) von Lorem Picsum, keine Persistierung, Alt-Text für Screen-Reader.

## Steps

1. **Iteration 1: Vite-Setup & Polaroid-Grid** - Vite-Projekt mit React-TypeScript Template, CSS Grid mit `repeat(3, 1fr)`, 5 initiale Bilder von Lorem Picsum (`https://picsum.photos/300/300?random={seed}`), Polaroid-Styling: padding (12px top/left/right, 45px bottom), border (1px solid #e0e0e0), box-shadow, zufällige Rotation pro Bild (±2-5°), alt-Text mit durchlaufender Nummerierung "Bild 1", "Bild 2" etc.

2. **Iteration 2: Plus-Button am Galerie-Ende** - Plus-Kachel als letztes Grid-Item, gleiche Dimensionen wie Polaroid, gestrichelter Rahmen (`2px dashed #ccc`), zentriertes +-Symbol, onClick fügt neues Bild hinzu, cursor: pointer, aria-label "Neues Bild hinzufügen", neue Bilder erhalten fortlaufende Nummer

3. **Iteration 3: Wobble-Animation bei Hover** - CSS @keyframes mit `rotate()` relativ zur initialen Rotation (±3°), Animation nur auf Polaroid-Bildern (nicht auf Plus-Button), 0.4s ease-in-out, sanftes Wackeln beim Mouse Over

4. **Iteration 4: Rechtsklick-Kontextmenü** - Rechtsklick auf Bild-Cards öffnet Context Menu mit `preventDefault()`, Menü an Cursor-Position, Polaroid-Styling (weißer Hintergrund, border 1px solid #e0e0e0, box-shadow), "Bild entfernen" Option per Linksklick, Menü schließt nach Aktion oder Click-outside

5. **Iteration 5: Responsive & UX-Details** - Media Queries (≤768px: 2 Spalten, ≤480px: 1 Spalte), Plus-Button Hover-Effekt (opacity: 0.7), Click-outside schließt Kontextmenü, cursor: pointer auf interaktiven Elementen, Alt-Text-Nummerierung passt sich dynamisch an aktuelle Bildanzahl an

## Further Considerations

Der Plan ist vollständig definiert und bereit zur Umsetzung. Alle Requirements sind aus Nutzersicht beschrieben und ermöglichen einen iterativen Entwicklungsprozess mit inkrementellem Mehrwert pro Iteration.
