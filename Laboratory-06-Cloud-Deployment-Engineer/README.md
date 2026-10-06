# Laboratory 06 - Cloud Deployment Engineer

## Mission Overview

This laboratory focused on deploying a cloud-based application using Docker and Docker Compose. The main task was to set up Nextcloud, an enterprise cloud storage system, together with its required database service. Through this activity, we learned how containers can be configured and managed using a `docker-compose.yml` file.

## Objectives

* Understand the basic concepts of containerized cloud deployment.
* Learn how to use Docker and Docker Compose.
* Create and configure a `docker-compose.yml` file.
* Deploy Nextcloud with a MySQL database.
* Understand the use of environment variables in Docker Compose.
* Practice troubleshooting YAML configuration and indentation errors.
* Verify that the deployed Nextcloud system is working properly.

## Commands Executed

The following commands were used during the laboratory activity:

```bash
mkdir nextcloud-deployment
cd nextcloud-deployment
```

Create and edit the Compose file:

```bash
nano docker-compose.yml
```

Start the containers:

```bash
docker compose up -d
```

Check the running containers:

```bash
docker compose ps
```

View container logs when troubleshooting:

```bash
docker compose logs
```

Stop the deployed services:

```bash
docker compose down
```

## Skills Learned

Through this laboratory, I learned how to deploy an application using Docker and Docker Compose. I learned how to create a Compose configuration file and define different services, including Nextcloud and MySQL. I also learned how environment variables can be used to configure database credentials and other settings.

Another important skill I developed was troubleshooting configuration files, especially YAML indentation and formatting. I also became more familiar with managing containers, checking their status, viewing logs, and stopping services when necessary.

Overall, this laboratory improved my understanding of cloud deployment, containerization, automation, and infrastructure management. It showed me how tools like Docker Compose can make deploying complex cloud applications faster, easier, and more organized.

