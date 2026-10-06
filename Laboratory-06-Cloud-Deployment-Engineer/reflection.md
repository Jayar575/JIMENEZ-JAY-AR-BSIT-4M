# Mission Reflection

Creating a `docker-compose.yml` file makes a cloud engineer’s work much easier because it allows several services to be set up and managed with only a few commands. Instead of manually entering commands for every container and configuration, Docker Compose can handle them automatically. This saves time, keeps the deployment organized, and makes it easier to repeat the same setup when needed.

If there is an indentation mistake in a YAML file, such as using a Tab instead of Spaces, the configuration may not work properly. YAML uses indentation to organize and identify different sections. Because of this, even a small spacing error can cause Docker Compose to display an error or prevent the containers from starting. This taught me that being careful with formatting is important when working with configuration files.

Environment variables such as `MYSQL_PASSWORD` were used to store important configuration values separately from the main Compose settings. This makes the configuration easier to modify and helps protect sensitive information such as database passwords. If we need to change a password or another setting, we can update the variable without changing the entire configuration.

Deploying Nextcloud in only a few minutes was a great experience because I was able to see how powerful automation can be. A system that would normally require several installation and configuration steps could be deployed quickly using Docker and Docker Compose. It made cloud deployment feel much simpler and more practical.

My understanding of Cloud Computing has also improved since Mission 1. At first, I mostly understood cloud computing as accessing applications and storage through the internet. Now, I have a better understanding of how containers, databases, networks, automation, and infrastructure work together to provide cloud services. This mission helped me realize that cloud computing involves not only using online services but also knowing how to deploy and manage them efficiently.

