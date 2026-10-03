---
name: interaction-states
description: Input-device rules for hover, press, focus and pointer interactions. Use when adding or changing buttons, links, cards or any hover-driven behaviour on a website.
---

- Put CSS `:hover` effects inside `@media (hover: hover)`.
- Give touch press feedback with `:active` inside `@media (hover: none)`. Release returns the resting appearance; touch leaves no sticky hover state.
- Use viewport breakpoints for layout and hover media queries for interaction capability. A wide touch screen still needs active feedback.
- Keep `:focus-visible` feedback independent of hover queries, for keyboard users.
- Gate JavaScript hover behaviour with `matchMedia('(hover: hover)').matches` and ignore touch pointer entry. Keep click/tap actions and drag behaviour working. Content that plays on hover (videos, previews) plays on touch while in view instead.
- Match touch feedback to the mobile markup: when the mobile element differs from desktop (another icon, no hover layer), use a brief scale or opacity response.

Check changed interactions with mouse hover and with touch press and release: the resting state returns after release and navigation still works.
