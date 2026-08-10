#!/bin/sh
# Stops the natively-run microservices started by run-local.sh (leaves DBs running).
pkill -f "userService/index.js" 2>/dev/null
pkill -f "projectService.*service.py" 2>/dev/null
pkill -f "taskService.*server.rb" 2>/dev/null
pkill -f "apiService/apiService" 2>/dev/null
echo "Services stopped. DBs (mysql/postgresql@14/mongod) left running; use brew services stop <name> / pkill mongod to stop them too."
