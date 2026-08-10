#!/bin/sh
# Starts all DBs + microservices natively (no Docker). Run stop-local.sh to tear down.
set -e
ROOT="$(cd "$(dirname "$0")" && pwd)"
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/4.0.0/bin:/opt/homebrew/bin:$PATH"

mkdir -p /tmp/microservice-demo-logs

echo "Starting DBs..."
brew services start mysql >/dev/null
brew services start postgresql@14 >/dev/null
pgrep -f "mongod --dbpath" >/dev/null || (nohup mongod --dbpath /opt/homebrew/var/mongodb --logpath /opt/homebrew/var/log/mongodb/mongo.log >/dev/null 2>&1 & disown)
sleep 2

echo "Starting userService (50051)..."
(cd "$ROOT/userService" && nohup node index.js > /tmp/microservice-demo-logs/userService.log 2>&1 & disown)

echo "Starting projectService (50052)..."
(cd "$ROOT/projectService" && nohup venv/bin/python service.py > /tmp/microservice-demo-logs/projectService.log 2>&1 & disown)

echo "Starting taskService (50053)..."
(cd "$ROOT/taskService" && nohup bundle exec ruby server.rb > /tmp/microservice-demo-logs/taskService.log 2>&1 & disown)

sleep 2

echo "Starting apiService gRPC (50059) + REST proxy (8081)..."
(cd "$ROOT/apiService" && nohup ./apiService serve > /tmp/microservice-demo-logs/apiService.log 2>&1 & disown)
(cd "$ROOT/apiService" && HOST=localhost PORT=50059 PROXY_PORT=8081 nohup ./apiService proxy > /tmp/microservice-demo-logs/apiGateway.log 2>&1 & disown)

sleep 2

echo "Starting frontend (8090, via Docker)..."
docker build -q -t microservice/demo/frontend "$ROOT/frontend" >/dev/null
docker rm -f microops-frontend >/dev/null 2>&1 || true
docker run -d --rm --name microops-frontend -p 8090:80 \
  -e GATEWAY_HOST=host.docker.internal -e GATEWAY_PORT=8081 \
  microservice/demo/frontend >/dev/null

echo "Done. Logs in /tmp/microservice-demo-logs. REST API at http://localhost:8081, UI at http://localhost:8090"
