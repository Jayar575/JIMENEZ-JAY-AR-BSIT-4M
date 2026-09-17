## Checkpoint 5 - The Container Lifecycle

### 1. View Running Containers

```bash
docker ps
```

This command lists the Docker containers that are currently active.

### 2. Stop the Running Container

```bash
docker stop <container_id>
```

This command stops the active container by specifying its container ID.

### 3. Check the Container Status

```bash
docker ps -a
```

This command displays all containers and allows you to check if the selected container is already stopped.

### 4. Delete the Container

```bash
docker rm <container_id>
```

This command removes the stopped container from the Docker environment.

