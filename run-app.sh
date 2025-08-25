#!/bin/bash

# Check if Docker is running
if ! docker info >/dev/null 2>&1; then
  echo "Docker is not running. Please start Docker first."
  exit 1
fi

# Ask for App Name
read -p "Enter your Grafana App Name (default: APP_NAME): " APPNAME
APPNAME=${APPNAME:-APP_NAME}

# Replace APP_NAME placeholder in docker-compose.yml
sed -i "s/APP_NAME/$APPNAME/g" docker-compose.yml

echo "Starting Docker Compose with App Name: $APPNAME"
docker compose up -d
