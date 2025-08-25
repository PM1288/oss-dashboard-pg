# Grafana + PostgreSQL with Auto-Provisioned Datasource

This project provides a ready-to-run setup of **Grafana 10.4.0** with a **PostgreSQL 15** backend.  

It includes:
- Pre-installed VolkovLabs plugins (with fallback versions).
- Auto-provisioned PostgreSQL datasource in Grafana.
- Branding customizations (app name, footer version text).
- Windows (`.bat`) and Linux/Mac (`.sh`) helper scripts to set the app name dynamically.

---

## 📦 Prerequisites

Before running this stack, you need:

1. **Docker** (20.10+ recommended)  
   - Install from [Docker Desktop (Windows/Mac)](https://www.docker.com/products/docker-desktop/)  
   - For Linux: follow the [Docker Engine installation guide](https://docs.docker.com/engine/install/)

2. **Docker Compose**  
   - Comes bundled with Docker Desktop (Windows/Mac).  
   - For Linux: install following [Compose plugin instructions](https://docs.docker.com/compose/install/).

3. Minimum system resources:
   - **2 CPU cores**
   - **2 GB RAM**
   - **2 GB free disk space** (plugins + Postgres data)

---

## 🚀 Getting Started

### 1. Clone or copy the project files

git clone https://github.com/your-org/test-grafana.git
cd test-grafana


Ensure these files are present:

docker-compose.yml
provisioning/datasources/datasource.yml
branding/ (optional icons/logo folder)
run-app.bat (for Windows)
run-app.sh (for Linux/Mac)

### 2. Start the stack
On Windows

run-grafana.bat

You’ll be prompted:
Enter your Grafana App Name (default: QiO AiO):
Example:
TestApp → Grafana UI will show TestApp Monitoring instead of Grafana.

On Linux/Mac

chmod +x run-grafana.sh
./run-grafana.sh

### 3. Access Grafana
Once containers are running:

URL: http://localhost:3000

Username: admin
Password: supersecret (change in docker-compose.yml)

⚙️ Customization
App Name / Version / ECCN
Hardcoded in docker-compose.yml.
Use the helper scripts to override interactively.


Branding
Replace icons by adding files in the branding/ folder:
fav32.png → favicon
grafana_icon.svg → main logo


🛑 Stopping the stack
docker compose down
To remove volumes as well (erases database and Grafana data):
docker compose down -v

