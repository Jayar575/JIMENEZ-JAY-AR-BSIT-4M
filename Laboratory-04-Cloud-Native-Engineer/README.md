# Laboratory 04 - Cloud-Native Engineer

## Mission Overview

This laboratory activity introduced the basic concepts of virtualization, containerization, and Docker. The main purpose was to learn how Docker containers can be used to package and run applications together with their required files and dependencies. Through the different checkpoints, I practiced using Docker commands and gained experience in managing containers and images.

---

## Objectives

The main objectives of this laboratory were to:

* Learn the basic idea of virtualization and containerization.
* Understand the differences between virtual machines and Docker containers.
* Become familiar with commonly used Docker commands.
* Learn how to download, create, run, and manage Docker images and containers.
* Deploy a simple application using Docker.
* Practice checking, starting, stopping, and removing containers.
* Understand the basic process of container-based application deployment.
* Improve my skills in working with cloud-native technologies.

---

## Docker Commands Executed

The following commands were used while completing Checkpoints 3, 4, and 5.

### Check Docker Version

```bash
docker --version
```

Used to check if Docker is installed and to display the installed Docker version.

### View Docker Information

```bash
docker info
```

Displays information about the Docker installation and its current environment.

### Display Available Images

```bash
docker images
```

Shows the Docker images that are currently stored on the computer.

### Download an Image

```bash
docker pull nginx
```

Downloads the Nginx image from the Docker registry.

### Create and Run a Container

```bash
docker run -d -p 8080:80 nginx
```

Creates an Nginx container and runs it in the background while connecting port 8080 on the computer to port 80 inside the container.

### Check Running Containers

```bash
docker ps
```

Displays the Docker containers that are currently active.

### Display All Containers

```bash
docker ps -a
```

Shows all containers, including those that are currently stopped.

### Stop a Container

```bash
docker stop <container_id>
```

Stops a running container by using its container ID.

### Start a Container

```bash
docker start <container_id>
```

Starts a container that was previously stopped.

### Delete a Container

```bash
docker rm <container_id>
```

Removes a container from Docker after it has been stopped.

### Delete an Image

```bash
docker rmi <image_id>
```

Removes an unwanted Docker image from the computer.

### View Container Logs

```bash
docker logs <container_id>
```

Displays the output and activity logs of a specific container.

### Create a Docker Image

```bash
docker build -t my-app .
```

Builds a new Docker image using the Dockerfile found in the current folder.

### Run the Created Image

```bash
docker run -d -p 8080:80 my-app
```

Runs a container using the newly created `my-app` image.

---

## Skills Learned

After completing the laboratory activity, I gained practical knowledge and experience in:

* Using Docker through the command line.
* Understanding how containers work.
* Comparing containers with virtual machines.
* Downloading and managing Docker images.
* Creating and running Docker containers.
* Checking the status of containers.
* Starting and stopping containers.
* Removing containers and images.
* Building images using a Dockerfile.
* Using port mapping to access containerized applications.
* Checking container logs for troubleshooting.
* Applying basic cloud-native deployment practices.
* Creating technical documentation using Markdown.

---

## Challenges Encountered

One of the challenges I experienced was remembering the purpose of the different Docker commands. Since several commands are used for managing containers, I needed to understand their functions before using them.

I also encountered some difficulty when identifying the correct container ID when performing commands such as starting, stopping, or removing containers. The `docker ps` and `docker ps -a` commands helped me determine which containers were available and their current status.

Another challenge was understanding port mapping. I had to learn how the computer's port connects to the port used by the application inside the Docker container.

Overall, the laboratory activity gave me a better understanding of Docker and containerization. It also helped me become more comfortable with using command-line tools and managing applications in a cloud-native environment.
