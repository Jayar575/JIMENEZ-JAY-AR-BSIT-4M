# Checkpoint 7 - Mission Reflection

## Mission Reflection

### 1. How does the boot time and setup process of a Docker container compare to installing an operating system on a Virtual Machine?

A Docker container usually starts much faster than a Virtual Machine because it does not require a complete operating system to boot. Instead, it uses the host system's kernel and only contains the application and the files it needs. A Virtual Machine requires installing and starting an entire operating system, which takes more time and computer resources. Because of this, Docker containers are more lightweight and convenient for application deployment.

### 2. Why is port mapping (-p 8080:80) necessary when running a web server inside a container?

Port mapping allows the web server inside the Docker container to be accessed from the host computer. In `-p 8080:80`, port `8080` represents the host computer's port, while port `80` is the port used by the web server inside the container. Without this connection, I would not be able to access the container's web server directly through the host browser.

### 3. What happens to the data inside a container when you use the docker rm command?

When `docker rm` is used, the selected container is deleted. Data stored only inside the container's writable layer will also be removed. Therefore, important files or information should be stored using Docker volumes or another form of persistent storage if they need to remain after the container is deleted.

### 4. How do you think containerization changes the way software developers and IT operations teams work together (DevOps)?

Containerization can make collaboration between developers and IT operations easier because both teams can work with the same application environment. Developers can package an application together with its dependencies, while the operations team can use the same container for testing and deployment. This helps reduce environment-related problems and creates a more consistent DevOps workflow.

### 5. How is your GitHub portfolio evolving?

My GitHub portfolio is gradually becoming more organized and complete. I am adding laboratory activities, source code, documentation, screenshots, and reflections to show the projects and technologies I have worked with. Instead of simply uploading code, I am also learning how to properly document my work and explain what I learned from each activity. This makes my GitHub portfolio a useful record of my progress and technical skills as an IT student.
