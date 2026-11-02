```bash
#!/bin/bash

PROJECT_DIR="$HOME/cloud-infrastructure"

echo "=========================================="
echo " Cloud Infrastructure Automation"
echo " Nextcloud + MariaDB"
echo "=========================================="

# Go to project directory
cd "$PROJECT_DIR" || {
    echo "ERROR: Project directory not found."
    exit 1
}

echo ""
echo "[1] Checking Docker..."
sudo docker --version

echo ""
echo "[2] Checking Docker Compose..."
sudo docker compose version

echo ""
echo "[3] Validating docker-compose.yml..."
sudo docker compose config

if [ $? -ne 0 ]; then
    echo "ERROR: Docker Compose configuration is invalid."
    exit 1
fi

echo ""
echo "[4] Checking Docker volumes..."
sudo docker volume ls

echo ""
echo "[5] Checking Docker network..."
sudo docker network ls

echo ""
echo "[6] Starting Nextcloud and MariaDB..."
sudo docker compose up -d

echo ""
echo "[7] Checking running containers..."
sudo docker compose ps

echo ""
echo "[8] Checking port 8080..."
sudo ss -lntp | grep 8080

echo ""
echo "[9] Checking UFW firewall..."
sudo ufw status verbose

echo ""
echo "[10] Checking disk space..."
df -h

echo ""
echo "=========================================="
echo " Deployment Verification Complete"
echo "=========================================="

echo ""
echo "Nextcloud URL:"
echo "http://192.168.1.22:8080"

echo ""
echo "Containers:"
sudo docker compose ps

echo ""
echo "Persistent Volumes:"
sudo docker volume ls

echo ""
echo "Infrastructure is ready."
```
