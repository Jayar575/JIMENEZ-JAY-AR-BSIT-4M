# Operational Manual
## Nextcloud Private Cloud Infrastructure

### 1. System Overview

This project implements a private cloud infrastructure using Ubuntu Server, Docker, Docker Compose, Nextcloud, and MariaDB.

The infrastructure consists of:

- Host machine: Windows laptop
- Hypervisor: Oracle VirtualBox
- Server: Ubuntu Server 24.04.5 LTS
- Firewall: UFW
- Container platform: Docker Engine
- Container orchestration: Docker Compose
- Application tier: Nextcloud
- Database tier: MariaDB 10.6
- Persistent storage: Docker named volumes
- Application port: 8080

The Nextcloud server is accessible through:

`http://192.168.1.22:8080`

### 2. Architecture

The infrastructure follows this flow:

Windows Host
→ Oracle VirtualBox
→ Ubuntu Server
→ UFW Firewall
→ Docker
→ Nextcloud Application
→ MariaDB Database

Docker provides an isolated network named `nextcloud_network` that allows the Nextcloud application to communicate with the MariaDB database.

### 3. Project Files

The project contains the following important files:

```text
cloud-infrastructure/
├── architecture-diagram.png
├── docker-compose.yml
├── automation-script.sh
├── operational-manual.md
└── final-reflection.md
```

### 4. Deployment Requirements

The following components are required:

- Windows or Linux host computer
- Oracle VirtualBox
- Ubuntu Server
- Docker Engine
- Docker Compose
- Internet connection
- GitHub repository

### 5. Docker Compose Deployment

Navigate to the project directory:

```bash
cd ~/cloud-infrastructure
```

Validate the Docker Compose configuration:

```bash
sudo docker compose config
```

If no configuration error is reported, deploy the stack:

```bash
sudo docker compose up -d
```

Check the running containers:

```bash
sudo docker compose ps
```

The expected services are:

```text
nextcloud-app
nextcloud-db
```

### 6. Application Access

The Nextcloud application is exposed through port 8080.

Open a web browser and access:

```text
http://192.168.1.22:8080
```

The administrator can then log in using the Nextcloud administrator account created during installation.

### 7. Database Configuration

The application uses MariaDB as its database.

The Docker Compose configuration connects Nextcloud to the database using the Docker service name:

```text
database
```

The application and database communicate through:

```text
nextcloud_network
```

The database is not required to be exposed directly to the host machine.

### 8. Persistent Storage

The deployment uses two Docker named volumes:

```text
db_data
nextcloud_data
```

The MariaDB data is stored in:

```text
/var/lib/mysql
```

The Nextcloud application data is stored in:

```text
/var/www/html
```

List the persistent volumes using:

```bash
sudo docker volume ls
```

Persistent volumes allow the application and database data to remain available even when the containers are stopped or recreated.

### 9. Firewall Configuration

UFW is used as the host firewall.

Check the firewall status:

```bash
sudo ufw status verbose
```

Required application access:

```text
22/tcp
8080/tcp
```

SSH is required for server administration, while port 8080 is required for access to Nextcloud.

Firewall configuration should follow the principle of allowing only the ports required by the infrastructure.

### 10. Container Management

Check container status:

```bash
sudo docker compose ps
```

View application logs:

```bash
sudo docker compose logs app
```

View database logs:

```bash
sudo docker compose logs database
```

Follow application logs in real time:

```bash
sudo docker compose logs -f app
```

Restart the stack:

```bash
sudo docker compose restart
```

Stop the stack:

```bash
sudo docker compose down
```

Start the existing stack again:

```bash
sudo docker compose up -d
```

### 11. Maintenance

The IT administrator should regularly check:

```bash
sudo docker compose ps
```

and:

```bash
sudo docker volume ls
```

The server should also be monitored for available disk space:

```bash
df -h
```

Docker disk usage can be checked with:

```bash
sudo docker system df
```

Logs should be reviewed when the application becomes unavailable or when containers repeatedly restart.

### 12. Backup and Recovery

Persistent volumes protect application data from normal container recreation, but persistent volumes alone should not be considered a complete backup strategy.

Important Nextcloud and MariaDB data should be backed up to a separate storage location.

Before major changes, administrators should create a backup of the database and application data.

The recovery process should include:

1. Stop the application when necessary.
2. Restore the database data.
3. Restore Nextcloud application data.
4. Start the Docker Compose stack.
5. Verify the Nextcloud dashboard.
6. Verify user files and database connectivity.

### 13. Troubleshooting

#### Containers are not running

Run:

```bash
sudo docker compose ps
```

Then inspect logs:

```bash
sudo docker compose logs
```

#### Nextcloud cannot be accessed

Check the application port:

```bash
sudo ss -lntp | grep 8080
```

Check the firewall:

```bash
sudo ufw status
```

Check the containers:

```bash
sudo docker compose ps
```

Test locally:

```bash
curl http://localhost:8080
```

#### Database connection problems

Check the MariaDB container:

```bash
sudo docker compose logs database
```

Check the Nextcloud container:

```bash
sudo docker compose logs app
```

Confirm that the database hostname is:

```text
database
```

#### Server reboot

After rebooting Ubuntu, check:

```bash
cd ~/cloud-infrastructure
sudo docker compose ps
```

The containers use:

```yaml
restart: unless-stopped
```

so they are configured to restart automatically after the Docker service becomes available.

### 14. Security Practices

The following security practices should be maintained:

- Use strong administrator passwords.
- Do not expose the MariaDB database directly to the network.
- Allow only required firewall ports.
- Keep Ubuntu Server updated.
- Keep Docker and container images updated according to a controlled maintenance schedule.
- Do not commit production passwords or secrets to public GitHub repositories.
- Regularly back up important data.
- Monitor container logs and disk usage.

### 15. Shutdown Procedure

For controlled maintenance:

```bash
cd ~/cloud-infrastructure
sudo docker compose down
```

After maintenance:

```bash
sudo docker compose up -d
```

Verify:

```bash
sudo docker compose ps
```

### 16. Operational Verification Checklist

Before considering the infrastructure operational, verify:

- [ ] Ubuntu Server is running.
- [ ] Docker is running.
- [ ] Docker Compose configuration is valid.
- [ ] Nextcloud container is running.
- [ ] MariaDB container is running.
- [ ] Persistent volumes exist.
- [ ] UFW is active.
- [ ] Port 8080 is allowed.
- [ ] Nextcloud opens in a browser.
- [ ] Database connectivity works.
- [ ] Containers restart after server reboot.
- [ ] Project documentation is committed to GitHub.

### 17. Conclusion

This infrastructure provides a containerized private cloud environment using Nextcloud and MariaDB. Docker Compose simplifies deployment and management, while Docker named volumes provide persistent storage. Ubuntu Server provides the operating environment and UFW provides host-level firewall control.

The documentation is intended to allow the client's IT team to deploy, operate, troubleshoot, and maintain the infrastructure without depending on the original developer.
