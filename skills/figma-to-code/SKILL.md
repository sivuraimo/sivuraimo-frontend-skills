---
name: figma-to-code
description: House rules for turning a Figma design into code in a Sivuraimo frontend project. Use when implementing a Figma node or figma.com URL, alongside the Figma plugin's design-to-code skill.
---

Figma MCP output (`get_design_context`) is React + Tailwind with absolute positioning. Treat it as a visual reference only and rewrite it into the project's own conventions. The project's `CLAUDE.md` names its stack, units, type classes and breakpoints; read it before writing markup.

## Checklist for a Figma node

1. Load the Figma plugin's `figma:figma-design-to-code` skill, then fetch `get_design_context` and a screenshot of the node, plus the mobile frame if one exists.
2. Identify layers that the code draws itself (canvas, WebGL, SVG generated in JS) and extend that module rather than dropping in an exported image.
3. Convert values into the project's scale: units as `CLAUDE.md` defines them (`rem()` / `em()` helpers, `rem`/`em` ratios), colours into existing tokens, text into the global type classes. Add a new token only when a colour is genuinely shared.
4. Reuse existing components (buttons, links, section headers, icons) before building new ones; search the components folder first.
5. Download assets into `public/` (kebab-case, `-desktop` / `-mobile` suffixes for breakpoint variants) and reference them by path. Code keeps no `figma.com` asset URLs.
6. Icons: inline SVG with `viewBox` kept and `fill="currentColor"`, so the parent controls size and colour.
7. Add the mobile breakpoint block from the mobile frame, at the end of the style block.
8. Interactive elements follow the `interaction-states` skill.
9. Check the result in the browser at desktop and mobile widths against the Figma screenshot: spacing, type, colours, and that nothing overflows.
