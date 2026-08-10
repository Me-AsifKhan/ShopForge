---
name: Kinetic Infrastructure
colors:
  surface: '#10131a'
  surface-dim: '#10131a'
  surface-bright: '#363940'
  surface-container-lowest: '#0b0e14'
  surface-container-low: '#191c22'
  surface-container: '#1d2026'
  surface-container-high: '#272a31'
  surface-container-highest: '#32353c'
  on-surface: '#e1e2eb'
  on-surface-variant: '#c7c4d7'
  inverse-surface: '#e1e2eb'
  inverse-on-surface: '#2e3037'
  outline: '#908fa0'
  outline-variant: '#464554'
  surface-tint: '#c0c1ff'
  primary: '#c0c1ff'
  on-primary: '#1000a9'
  primary-container: '#8083ff'
  on-primary-container: '#0d0096'
  inverse-primary: '#494bd6'
  secondary: '#5de6ff'
  on-secondary: '#00363e'
  secondary-container: '#00cbe6'
  on-secondary-container: '#00515d'
  tertiary: '#c2c6d4'
  on-tertiary: '#2b303b'
  tertiary-container: '#8c909e'
  on-tertiary-container: '#252a35'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#e1e0ff'
  primary-fixed-dim: '#c0c1ff'
  on-primary-fixed: '#07006c'
  on-primary-fixed-variant: '#2f2ebe'
  secondary-fixed: '#a2eeff'
  secondary-fixed-dim: '#2fd9f4'
  on-secondary-fixed: '#001f25'
  on-secondary-fixed-variant: '#004e5a'
  tertiary-fixed: '#dee2f1'
  tertiary-fixed-dim: '#c2c6d4'
  on-tertiary-fixed: '#171c26'
  on-tertiary-fixed-variant: '#424752'
  background: '#10131a'
  on-background: '#e1e2eb'
  surface-variant: '#32353c'
typography:
  headline-lg:
    fontFamily: Inter
    fontSize: 30px
    fontWeight: '600'
    lineHeight: 38px
    letterSpacing: -0.02em
  headline-md:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
    letterSpacing: -0.01em
  headline-sm:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '600'
    lineHeight: 26px
  body-lg:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  code-md:
    fontFamily: JetBrains Mono
    fontSize: 13px
    fontWeight: '400'
    lineHeight: 20px
  code-sm:
    fontFamily: JetBrains Mono
    fontSize: 12px
    fontWeight: '450'
    lineHeight: 18px
  label-caps:
    fontFamily: Inter
    fontSize: 11px
    fontWeight: '700'
    lineHeight: 16px
    letterSpacing: 0.05em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  base: 4px
  xs: 4px
  sm: 8px
  md: 16px
  lg: 24px
  xl: 40px
  gutter: 16px
  margin: 24px
---

## Brand & Style

The design system is engineered for developers and platform engineers managing complex microservices architectures. The brand personality is precise, high-performance, and dependable. 

The visual style is a fusion of **Modern Corporate** and **Minimalist** aesthetics, heavily influenced by the "dark-mode utility" trend seen in industry-leading developer tools. It prioritizes information density and clarity without sacrificing elegance. Key characteristics include:
- **Dark-First:** A low-light interface reduces eye strain during long debugging sessions.
- **Subtle Depth:** Depth is communicated through tonal layering and 1px borders rather than heavy shadows.
- **Technical Precision:** Monospace accents are used strategically to distinguish system data from human-readable labels.
- **Action-Oriented:** High-contrast accents (Indigo and Cyan) are reserved for primary calls to action and platform-specific operations.

## Colors

The palette is anchored in a deep charcoal-black to ensure maximum contrast for syntax highlighting and status indicators.

- **Primary (Electric Indigo):** Used for main navigational elements, primary buttons, and active states.
- **Ops (Cyan):** Dedicated specifically to infrastructure, deployment pipelines, and cloud-native operations to provide a visual "mode" change.
- **Semantic Colors:** Status colors are high-vibrancy to ensure they stand out against the dark backgrounds. Use these sparingly for indicators, alerts, and logs.
- **Neutrals:** Surfaces are built using a hierarchical stack—`#0B0E14` for the canvas, `#1A1E27` for elevated components like cards or sidebars, and `#2A2F3A` for structural borders.

## Typography

This design system utilizes a dual-font strategy to separate UI navigation from technical content.

- **Inter:** The primary workhorse for the interface. Use it for headings, body text, and standard UI controls. It provides a clean, neutral feel that scales well.
- **JetBrains Mono:** Reserved for "technical data." This includes Microservice IDs, log streams, terminal outputs, API endpoints, and configuration snippets. It signals to the user that the content is system-generated or editable code.
- **Scaling:** For mobile devices, `headline-lg` should scale down to `24px` to maintain readability within smaller viewports.

## Layout & Spacing

The layout uses a **Fluid Grid** approach for internal dashboards, allowing maximum data density on wide monitor setups, with a standard **12-column system** for landing or settings pages.

- **Grid:** On desktop, use a 12-column grid with 16px gutters. For side-nav applications, the "content area" should maintain a fluid width until 1440px, then center.
- **Spacing Rhythm:** Use a 4px baseline. Most UI elements should use `16px (md)` padding for internal card content and `8px (sm)` for tight vertical lists.
- **Mobile Adaption:** Sidebars should collapse into a bottom navigation bar or a hamburger menu, and margins should reduce to 16px.

## Elevation & Depth

Hierarchy is established through **Tonal Layering** and **Subtle Outlines** rather than physical shadows.

- **Level 0 (Background):** `#0B0E14` - The base canvas.
- **Level 1 (Surface):** `#1A1E27` - Cards, modals, and sidebars. 
- **Borders:** All Level 1 surfaces must have a 1px solid border of `#2A2F3A`.
- **Interactions:** On hover, elements should transition to a slightly lighter surface color or add a very soft Indigo glow (`drop-shadow: 0 4px 12px rgba(99, 102, 241, 0.15)`) to indicate interactivity.
- **Overlays:** Modals use a backdrop blur (8px) with a 50% opacity version of the background color to maintain focus.

## Shapes

The shape language is "Soft-Modern," utilizing rounded corners to balance the technical, dark aesthetic with an approachable feel.

- **Standard Radius:** 8px (`rounded-md`) is used for buttons, inputs, and small cards.
- **Large Radius:** 12px-16px (`rounded-lg/xl`) is used for main container cards or modal windows.
- **Interactive Elements:** Checkboxes and small status badges use a 4px radius for a crisper, more "functional" look.

## Components

- **Buttons:** 
  - *Primary:* Solid Indigo (`#6366F1`) with white text. 
  - *Secondary:* Transparent background with `#2A2F3A` border.
  - *Ops:* Solid Cyan (`#22D3EE`) with dark text (`#0B0E14`).
- **Input Fields:** Background matches the card surface (`#1A1E27`), with a `#2A2F3A` border. On focus, the border transitions to Indigo.
- **Chips/Badges:** Small, 12px font size. For status badges, use a low-opacity background of the status color (e.g., 10% green) with a solid green text.
- **Cards:** No external shadow by default; 1px border is the primary separator.
- **Lists:** Rows in a data table should have a subtle hover state change to `#2A2F3A`.
- **Command Palette:** A central component for dev-tools. Use a floating modal with heavy backdrop blur and JetBrains Mono for keyboard shortcuts.