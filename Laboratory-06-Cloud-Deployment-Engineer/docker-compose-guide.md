# Docker Compose Technical Documentation

## Introduction

This document explains how the Docker Compose file was used to deploy Nextcloud along with its MySQL database. It describes the different services, settings, environment variables, and connections needed for the system to work properly.

## 1. What does the `services:` block do?

The `services:` section is where the containers needed by the application are defined. Each service represents a specific part of the system that Docker Compose will create and run.

For our deployment, we used two main services:

* **Nextcloud** – runs the main cloud storage application.
* **MySQL** – provides the database used to store Nextcloud information.

Docker Compose manages these services as one application. It can create the containers, configure their settings, and connect them through a network without requiring us to manually set up each container.

## 2. How does Nextcloud find the database container?

Nextcloud connects to the MySQL container using the `MYSQL_HOST` environment variable.

For example:

```yaml
environment:
  MYSQL_HOST: db
```

Here, `db` is the service name assigned to the MySQL container in the Compose file. Docker Compose creates an internal network where the services can communicate with one another using their service names.

This means Nextcloud can connect to MySQL using `db` instead of having to know the database container's IP address. Docker handles the internal connection automatically.

## 3. Difference Between `docker run` and `docker compose up -d`

The `docker run` command is normally used when starting a single Docker container. It requires the user to provide the necessary options and configurations directly in the command.

Example:

```bash
docker run -d nginx
```

Meanwhile, `docker compose up -d` uses the settings written in a `docker-compose.yml` file to start the application's services.

Example:

```bash
docker compose up -d
```

The Compose command can start multiple connected containers and apply their configurations automatically. In

