@echo off
REM Check if Docker is running
docker info >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Docker is not running. Please start Docker Desktop first.
    pause
    exit /b 1
)

REM Ask for App Name
set /p APPNAME=Enter your Grafana App Name (default: APP_NAME): 
if "%APPNAME%"=="" set APPNAME=APP_NAME

REM Replace APP_NAME placeholder in docker-compose.yml
powershell -Command "(Get-Content docker-compose.yml) -replace 'APP_NAME', '%APPNAME%' | Set-Content docker-compose.yml"

echo Starting Docker Compose with App Name: %APPNAME%
docker compose up -d
pause
