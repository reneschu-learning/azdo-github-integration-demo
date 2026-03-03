# Plan: Iterative Requirements for a React-TypeScript Image Gallery

An image gallery website with React/TypeScript and Vite in Polaroid style. Initial 5 square images (300x300px) from Lorem Picsum, no persistence, alt text for screen readers.

## Steps

1. **Iteration 1: Vite Setup & Polaroid Grid** - Vite project with React-TypeScript template, CSS Grid with `repeat(3, 1fr)`, 5 initial images from Lorem Picsum (`https://picsum.photos/300/300?random={seed}`), Polaroid styling: padding (12px top/left/right, 45px bottom), border (1px solid #e0e0e0), box-shadow, random rotation per image (±2-5°), alt text with sequential numbering "Image 1", "Image 2" etc.

2. **Iteration 2: Plus Button at Gallery End** - Plus tile as last grid item, same dimensions as Polaroid, dashed border (`2px dashed #ccc`), centered + symbol, onClick adds new image, cursor: pointer, aria-label "Add new image", new images receive sequential numbering

3. **Iteration 3: Wobble Animation on Hover** - CSS @keyframes with `rotate()` relative to initial rotation (±3°), animation only on Polaroid images (not on plus button), 0.4s ease-in-out, gentle wobble on mouse over

4. **Iteration 4: Right-Click Context Menu** - Right-click on image cards opens context menu with `preventDefault()`, menu at cursor position, Polaroid styling (white background, border 1px solid #e0e0e0, box-shadow), "Remove image" option via left-click, menu closes after action or click-outside

5. **Iteration 5: Responsive & UX Details** - Media queries (≤768px: 2 columns, ≤480px: 1 column), plus button hover effect (opacity: 0.7), click-outside closes context menu, cursor: pointer on interactive elements, alt text numbering dynamically adapts to current image count

## Further Considerations

The plan is fully defined and ready for implementation. All requirements are described from the user's perspective and enable an iterative development process with incremental value per iteration.
