# Frontend Design Spec

Frontend for the microservice-demo project/task manager, with a reserved Platform section for future DevOps/SRE demo modules (Load Testing, Observability). Dev-tool aesthetic, not consumer-app.

## Theme

Dark-first, light mode optional toggle. Reference feel: Linear, Vercel, Grafana.

### Colors

| Token | Value | Use |
|---|---|---|
| `bg-base` | `#0B0E14` | App background |
| `bg-surface` | `#12151C` | Secondary background (sidebar, top bar) |
| `bg-card` | `#1A1E27` | Cards, panels, modals |
| `border-subtle` | `#2A2F3A` | 1px card/panel borders |
| `accent-primary` | `#6366F1` (or `#7C6FF0`) | Primary actions, links, active nav — core app pages |
| `accent-platform` | `#22D3EE` | Load Testing / Observability pages only |
| `status-success` | `#22C55E` | Healthy, success states |
| `status-warning` | `#F59E0B` | Warning, degraded |
| `status-error` | `#EF4444` | Down, error, failed |
| `text-primary` | `#E5E7EB` | Headings, primary text |
| `text-muted` | `#8B93A5` | Secondary text, labels |

One accent per context — never mix `accent-primary` and `accent-platform` on the same page.

### Typography

- UI font: Inter (or similar geometric sans). Tight letter-spacing on headers.
- Monospace: JetBrains Mono / Roboto Mono — for IDs, tokens, logs, metric values.

### Shape & elevation

- Card radius: 8–10px.
- Shadows: subtle, soft depth on hover only — no heavy gradients.
- Charts: thin-line sparklines/area charts, accent-colored, dark grid lines (Grafana-style).

### Spacing

8px base grid. Consistent card padding (16–24px). Consistent radius across all components — no mixing.

## Layout

- **Sidebar** (collapsible, icon-rail on small screens), two groups:
  - Workspace: Dashboard, Projects
  - Platform (visually separated, muted label/divider): Load Testing, Observability — "Coming soon" badge until wired
- **Top bar**: project switcher, user avatar + logout, theme toggle
- **Auth pages** (Login/Register): no sidebar/top bar, full-screen centered layout

## Screens

### Auth
- **Login** (default entry route): email, password → `POST /v1/user/login`. Link to Register.
- **Register** (separate route): name, email, password → `POST /v1/user/register`. Link to Login.
- Store JWT on success, redirect to Dashboard. Inline error on failure.
- Unauthenticated access to any other route redirects to Login.

### Dashboard / Projects List
- Grid of project cards: name, tag count, task count
- "New Project" modal → `POST /v1/project/create`

### Project Detail
- Header: project name, breadcrumb
- Tags: chip list + "Add Tag" (CreateTag)
- Tasks: list/kanban toggle, filter by tag / assigned user (`GET /v1/project/{project_id}/task/list` variants)
- Task card: name, assignee avatar, tag chip
- "New Task" → `POST /v1/task/create`
- Task edit (tag/assignee) → `POST /v1/task/update`

### Load Testing (Platform, future-scope — mock data OK)
- Controls: target service dropdown, RPS slider, duration, concurrency, Start/Stop
- Live stats: requests sent, success/error counts, current RPS, latency p50/p95/p99 (live line chart)
- History table: past runs, config, pass/fail badge

### Observability (Platform, future-scope — mock data OK)
- Service health grid: one card per microservice (userService, projectService, taskService, apiService gateway) — status dot, uptime %, req/sec, error rate
- Metrics row: CPU/memory sparklines, latency chart
- Logs panel: scrollable, filter by service + severity, monospace, color-coded level
- Traces (optional/expandable): request hop waterfall (gateway → service → db)
- Badge: "Backed by Prometheus + Grafana + Loki on GKE"

## Entities

| Entity | Fields |
|---|---|
| User | id, name, email, token |
| Project | id, name, tags[] |
| Tag | id, name, project_id |
| Task | id, name, project_id, tag_id, assigned_user_id, user_id |

## Rules

- Platform pages use `accent-platform`, core app pages use `accent-primary` — never both on one page.
- No file upload, no payments, no websockets.
- Load Testing / Observability: full UI/UX now, mock data acceptable, layout must not need rework when wired to real data later.
- 8px spacing grid and consistent radius enforced across all components.
