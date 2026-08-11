# Graph Report - .  (2026-08-11)

## Corpus Check
- 83 files · ~151,992 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 598 nodes · 1015 edges · 62 communities (33 shown, 29 thin omitted)
- Extraction: 94% EXTRACTED · 6% INFERRED · 0% AMBIGUOUS · INFERRED: 56 edges (avg confidence: 0.74)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- projectService Python Deps/API
- userService Auth (JWT/bcrypt)
- apiService gRPC Client/Gateway Core
- API Server Method Impls
- apiService Auth Interceptor/Serve
- userService gRPC Transport
- Docker Compose + Swagger UI
- userService Dependencies
- projectService gRPC Client
- taskService gRPC Transport
- User Login/Get Protobuf
- Task List Request Protobuf
- Task Response Protobuf
- Kanban Board Mockup
- apiService Gateway Proxy Cmd
- Auth/Dashboard Design-to-Frontend Links
- Observability Mockup
- Task Create Request Protobuf
- User Proto Descriptors
- Task Update Request Protobuf
- Project Proto Descriptors
- Project Tag Response Protobuf
- Task Proto Descriptors
- Project Create Request Protobuf
- Project Get Request Protobuf
- User Register Request Protobuf
- Dashboard/Projects Mockup
- Project Create Tag Protobuf
- User Verify Response Protobuf
- User Login Response Protobuf
- apiService Build/Run Scripts
- Load Testing/Observability Design Links
- Frontend API Client (js/api.js)
- Project Response Protobuf
- User Protobuf Reflection
- Login Screen Mockup
- Load Testing Mockup
- Project Protobuf Reflection
- Task Protobuf Reflection
- apiService Main Entrypoint
- Design System Color/Theme Tokens
- Build/Up Shell Scripts
- taskService Project Proto Bridge
- taskService Task Proto Bridge
- taskService User Proto Bridge
- gRPC Transport Rationale
- API Proto Init
- run-local.sh Script
- License References
- Go Module Packages
- stop-local.sh Script
- taskService DB Task Relations
- taskService Init Script
- taskService Project Proto
- taskService Task Proto
- taskService User Proto
- Swagger UI Favicon (16x16)
- Swagger UI Favicon (32x32)
- Nginx Default Error Page
- JWT Auth Rationale

## God Nodes (most connected - your core abstractions)
1. `TaskResponse` - 34 edges
2. `ProjectResponse` - 25 edges
3. `UserResponse` - 23 edges
4. `APIClient` - 20 edges
5. `CreateTaskRequest` - 19 edges
6. `TagResponse` - 18 edges
7. `ListTasksRequest` - 18 edges
8. `VerifyResponse` - 18 edges
9. `GetProjectRequest` - 17 edges
10. `UpdateTaskRequest` - 17 edges

## Surprising Connections (you probably didn't know these)
- `Kinetic Infrastructure design system (colors, typography, elevation)` --semantically_similar_to--> `Frontend color token system`  [INFERRED] [semantically similar]
  frontend-design/stitch_modern_project_dashboard/kinetic_infrastructure/DESIGN.md → design.md
- `newGateway()` --calls--> `RegisterAPIHandlerFromEndpoint()`  [INFERRED]
  apiService/cmd/proxy.go → protos/api/api.pb.gw.go
- `serve()` --calls--> `NewProjectSvcClient()`  [INFERRED]
  apiService/cmd/serve.go → protos/project/project_grpc.pb.go
- `serve()` --calls--> `NewTaskSvcClient()`  [INFERRED]
  apiService/cmd/serve.go → protos/task/task_grpc.pb.go
- `serve()` --calls--> `NewUserSvcClient()`  [INFERRED]
  apiService/cmd/serve.go → protos/user/user_grpc.pb.go

## Import Cycles
- None detected.

## Hyperedges (group relationships)
- **Microservice architecture topology (docker-compose)** — dc_user_service, dc_project_service, dc_task_service, dc_api_service, dc_api_gateway, dc_frontend [EXTRACTED 1.00]
- **Shared dark-mode design system tokens across spec, design system doc, and mockups** — design_md_color_token_system, design_md_theme_dark_first, frontend_design_stitch_modern_project_dashboard_kinetic_infrastructure_design_kinetic_infrastructure_design_system, frontend_design_stitch_modern_project_dashboard_authentication_code_login_register_mockup [INFERRED 0.85]
- **Authentication flow: spec, mockup, and live implementation** — design_md_auth_screens_spec, frontend_design_stitch_modern_project_dashboard_authentication_code_login_register_mockup, frontend_index_login_page [EXTRACTED 1.00]
- **MicroOps Authentication Flow** — frontend_design_stitch_modern_project_dashboard_authentication_screen_login_screen, frontend_design_stitch_modern_project_dashboard_authentication_screen_login_form, frontend_design_stitch_modern_project_dashboard_authentication_screen_register_tab, frontend_design_stitch_modern_project_dashboard_authentication_screen_authenticate_action, frontend_design_stitch_modern_project_dashboard_authentication_screen_post_v1_user_login [INFERRED 0.85]
- **Project Cards forming the Projects grid pattern** — frontend_design_stitch_modern_project_dashboard_dashboard_projects_screen_core_api_service_card, frontend_design_stitch_modern_project_dashboard_dashboard_projects_screen_user_db_cluster_card, frontend_design_stitch_modern_project_dashboard_dashboard_projects_screen_admin_dashboard_card, frontend_design_stitch_modern_project_dashboard_dashboard_projects_screen_create_new_project_action [EXTRACTED 0.90]
- **Load testing configure-run-review workflow on Load Testing screen** — frontend_design_stitch_modern_project_dashboard_platform_load_testing_screen_test_configuration_panel, frontend_design_stitch_modern_project_dashboard_platform_load_testing_screen_live_telemetry_panel, frontend_design_stitch_modern_project_dashboard_platform_load_testing_screen_recent_runs_table [INFERRED 0.85]
- **Microservice Health Card Group** — frontend_design_stitch_modern_project_dashboard_platform_observability_screen_userservice_health_card, frontend_design_stitch_modern_project_dashboard_platform_observability_screen_apiservice_health_card, frontend_design_stitch_modern_project_dashboard_platform_observability_screen_projectservice_health_card, frontend_design_stitch_modern_project_dashboard_platform_observability_screen_taskservice_health_card [INFERRED 0.85]
- **Kanban Task Workflow (To Do -> In Progress -> Done)** — frontend_design_stitch_modern_project_dashboard_project_details_tasks_screen_todo_column, frontend_design_stitch_modern_project_dashboard_project_details_tasks_screen_in_progress_column, frontend_design_stitch_modern_project_dashboard_project_details_tasks_screen_done_column [EXTRACTED 0.90]

## Communities (62 total, 29 thin omitted)

### Community 0 - "projectService Python Deps/API"
Cohesion: 0.06
Nodes (20): Base, dotenv, google-protobuf, object, API, Project, Tag, ProjectSvc (+12 more)

### Community 1 - "userService Auth (JWT/bcrypt)"
Cohesion: 0.06
Nodes (14): auth, bcrypt, messages, jwt, API, connectDB(), dbClient, grpc (+6 more)

### Community 2 - "apiService gRPC Client/Gateway Core"
Cohesion: 0.31
Nodes (32): APIClient, APIServer, ClientConn, DialOption, Marshaler, Context, Message, Request (+24 more)

### Community 3 - "API Server Method Impls"
Cohesion: 0.15
Nodes (15): UnimplementedAPIServer, UnsafeAPIServer, Command, testClient(), _API_CreateProject_Handler(), _API_CreateTask_Handler(), _API_GetProject_Handler(), _API_ListTasks_Handler() (+7 more)

### Community 4 - "apiService Auth Interceptor/Serve"
Cohesion: 0.14
Nodes (14): Command, serve(), authenticate(), getAuthFromContext(), GetUserID(), Context, UnaryServerInterceptor, needAuthenticate() (+6 more)

### Community 5 - "userService gRPC Transport"
Cohesion: 0.16
Nodes (14): ClientConnInterface, Context, ServiceRegistrar, UnaryServerInterceptor, NewUserSvcClient(), RegisterUserSvcServer(), _UserSvc_GetUser_Handler(), _UserSvc_Login_Handler() (+6 more)

### Community 6 - "Docker Compose + Swagger UI"
Cohesion: 0.13
Nodes (21): protoc grpc-gateway reverse-proxy generation for api.proto, Swagger UI page (loads swagger.json from api-gateway), Swagger UI OAuth2 redirect handler, API Gateway / Proxy (docker-compose), API Service (docker-compose), Frontend (docker-compose), MongoDB (docker-compose), MySQL (docker-compose) (+13 more)

### Community 7 - "userService Dependencies"
Cohesion: 0.10
Nodes (20): bcrypt, @grpc/grpc-js, @grpc/proto-loader, jsonwebtoken, mongodb, author, dependencies, bcrypt (+12 more)

### Community 8 - "projectService gRPC Client"
Cohesion: 0.17
Nodes (13): ProjectSvcClient, ProjectSvcServer, UnimplementedProjectSvcServer, UnsafeProjectSvcServer, ClientConnInterface, Context, ServiceRegistrar, UnaryServerInterceptor (+5 more)

### Community 9 - "taskService gRPC Transport"
Cohesion: 0.17
Nodes (13): ClientConnInterface, Context, ServiceRegistrar, UnaryServerInterceptor, NewTaskSvcClient(), RegisterTaskSvcServer(), _TaskSvc_CreateTask_Handler(), _TaskSvc_ListTasks_Handler() (+5 more)

### Community 10 - "User Login/Get Protobuf"
Cohesion: 0.12
Nodes (6): MessageState, SizeCache, UnknownFields, GetUserRequest, LoginRequest, VerifyRequest

### Community 11 - "Task List Request Protobuf"
Cohesion: 0.13
Nodes (5): SizeCache, UnknownFields, ListTasksRequest, ListTasksResponse, main()

### Community 12 - "Task Response Protobuf"
Cohesion: 0.12
Nodes (3): TaskResponse, TaskApi, main()

### Community 13 - "Kanban Board Mockup"
Cohesion: 0.19
Nodes (14): Done Column, In Progress Column, Kanban Board Layout (To Do / In Progress / Done), Project Alpha Task Board Screen, Tag: backend, Tag: frontend, Tag: infrastructure, Task: Design new empty states for Dashboard (+6 more)

### Community 14 - "apiService Gateway Proxy Cmd"
Cohesion: 0.22
Nodes (8): Command, Context, Request, newGateway(), proxy(), serveSwagger(), Handler, ResponseWriter

### Community 15 - "Auth/Dashboard Design-to-Frontend Links"
Cohesion: 0.27
Nodes (10): Auth screens spec (Login/Register), Dashboard / Projects List spec, Entities (User, Project, Tag, Task), Project Detail spec (tags, tasks, kanban), Projects dashboard page (frontend/dashboard.html), MicroOps auth mockup (Login/Register tabs), MicroOps Projects bento-grid mockup, MicroOps Project Details kanban mockup (+2 more)

### Community 16 - "Observability Mockup"
Cohesion: 0.29
Nodes (10): Observability Dashboard Screen (MicroOps), apiService Health Card (Degraded), Cluster CPU Usage Metric (42%), Cluster Memory Metric (68%), Live Tail (Loki) Log Panel, MicroOps Sidebar Navigation, projectService Health Card (Healthy), Prometheus + Grafana + Loki on GKE Stack (+2 more)

### Community 18 - "User Proto Descriptors"
Cohesion: 0.22
Nodes (3): file_protos_user_user_proto_init(), file_protos_user_user_proto_rawDescGZIP(), init()

### Community 20 - "Project Proto Descriptors"
Cohesion: 0.25
Nodes (3): file_protos_project_project_proto_init(), file_protos_project_project_proto_rawDescGZIP(), init()

### Community 22 - "Task Proto Descriptors"
Cohesion: 0.25
Nodes (3): file_protos_task_task_proto_init(), file_protos_task_task_proto_rawDescGZIP(), init()

### Community 26 - "Dashboard/Projects Mockup"
Cohesion: 0.32
Nodes (8): Projects Dashboard Screen (Project Alpha), Active Tasks Status Indicator Pattern (checkmark = healthy, warning triangle = degraded), Admin Dashboard Project Card (v3.0.1, frontend/internal, 5/5 active tasks), Core API Service Project Card (v2.4.1, prod/backend, 12/12 active tasks), Create New Project Action Card, Project Card Grid Layout, Sidebar Navigation (Dashboard, Projects, Load Testing, Observability, Settings, Support, Logout), User DB Cluster Project Card (v1.1.0, data/alert tag, 3/8 active tasks warning state)

### Community 30 - "apiService Build/Run Scripts"
Cohesion: 0.29
Nodes (4): GO111MODULE, build.sh script, proxy.sh script, run.sh script

### Community 31 - "Load Testing/Observability Design Links"
Cohesion: 0.43
Nodes (7): One accent per context rule (accent-primary vs accent-platform), Load Testing platform spec (mock data), Observability platform spec (mock data, Prometheus+Grafana+Loki), MicroOps Load Testing mockup (controls + live telemetry), MicroOps Observability mockup (service health grid + Loki log tail), Load Testing page (frontend/load-testing.html), Observability page (frontend/observability.html)

### Community 32 - "Frontend API Client (js/api.js)"
Cohesion: 0.29
Nodes (4): Api, ProjectCache, Session, renderShell()

### Community 35 - "Login Screen Mockup"
Cohesion: 0.33
Nodes (6): Authenticate Action Button, Login Form (Email/Password), MicroOps Login Screen, MicroOps Platform Engineering Portal, POST /v1/user/login endpoint, Register Tab

### Community 36 - "Load Testing Mockup"
Cohesion: 0.47
Nodes (6): p50/p95/p99 latency percentile metrics, Live Telemetry panel (RPS, requests, success/error rate, latency chart), Load Testing Screen (Project Alpha dashboard), payment-gateway-v2 (prod) target microservice, Recent Runs table (target, timestamp, max RPS, p95 latency, status), Test Configuration panel (target service, RPS, duration, concurrency)

### Community 40 - "Design System Color/Theme Tokens"
Cohesion: 0.40
Nodes (5): Frontend color token system, Dark-first theme (Linear/Vercel/Grafana reference feel), Dual-font strategy: Inter for UI, JetBrains Mono for technical data, Kinetic Infrastructure design system (colors, typography, elevation), Elevation via tonal layering, not shadows

### Community 42 - "taskService Project Proto Bridge"
Cohesion: 0.50
Nodes (3): DemoProject, DemoProject::ProjectSvc, DemoProject::ProjectSvc::Service

### Community 43 - "taskService Task Proto Bridge"
Cohesion: 0.50
Nodes (3): DemoTask, DemoTask::TaskSvc, DemoTask::TaskSvc::Service

### Community 44 - "taskService User Proto Bridge"
Cohesion: 0.50
Nodes (3): DemoUser, DemoUser::UserSvc, DemoUser::UserSvc::Service

### Community 45 - "gRPC Transport Rationale"
Cohesion: 0.67
Nodes (3): protoc Go/gRPC code generation for api.proto, grpcio / grpcio-tools 1.33.2 (RPC dependency), GRPC as transport layer

## Knowledge Gaps
- **73 isolated node(s):** `GO111MODULE`, `github.com/Joker666/microservice-demo/apiService`, `ProjectCache`, `Api`, `UnsafeAPIServer` (+68 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **29 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `TaskResponse` connect `Task Response Protobuf` to `Project Response Protobuf`, `API Server Method Impls`, `apiService Auth Interceptor/Serve`, `Task Protobuf Reflection`, `taskService gRPC Transport`, `Task List Request Protobuf`, `Task Create Request Protobuf`, `Task Update Request Protobuf`, `Project Tag Response Protobuf`, `Task Proto Descriptors`, `User Verify Response Protobuf`?**
  _High betweenness centrality (0.156) - this node is a cross-community bridge._
- **Why does `TaskApi` connect `Task Response Protobuf` to `projectService Python Deps/API`?**
  _High betweenness centrality (0.131) - this node is a cross-community bridge._
- **Why does `APIClient` connect `apiService gRPC Client/Gateway Core` to `API Server Method Impls`, `User Login/Get Protobuf`, `Task List Request Protobuf`, `Task Update Request Protobuf`, `Project Create Request Protobuf`, `Project Get Request Protobuf`, `User Register Request Protobuf`?**
  _High betweenness centrality (0.088) - this node is a cross-community bridge._
- **What connects `GO111MODULE`, `github.com/Joker666/microservice-demo/apiService`, `ProjectCache` to the rest of the system?**
  _73 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `projectService Python Deps/API` be split into smaller, more focused modules?**
  _Cohesion score 0.059800664451827246 - nodes in this community are weakly interconnected._
- **Should `userService Auth (JWT/bcrypt)` be split into smaller, more focused modules?**
  _Cohesion score 0.06190476190476191 - nodes in this community are weakly interconnected._
- **Should `API Server Method Impls` be split into smaller, more focused modules?**
  _Cohesion score 0.14814814814814814 - nodes in this community are weakly interconnected._