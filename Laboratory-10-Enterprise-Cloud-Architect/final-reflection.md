# Final Reflection

## Cloud Infrastructure Deployment Journey

Throughout the cloud infrastructure missions, I developed a better understanding of how infrastructure components work together to provide a reliable and secure application environment. What initially appeared to be a complex cloud deployment became easier to understand after breaking the project into infrastructure, networking, security, application, storage, automation, and documentation components.

One of the most important lessons I learned was the importance of planning before deployment. Creating the architecture diagram helped me understand the relationship between the host machine, VirtualBox hypervisor, Ubuntu Server, firewall, Docker, application containers, database services, and persistent storage.

I also learned how to provision and configure an Ubuntu Server virtual machine and make it accessible through the host computer. Networking became an important part of the project because the application needed to be reachable from the Windows host while remaining inside the virtualized server environment.

The Docker deployment was another major learning experience. I deployed Nextcloud together with MariaDB using Docker Compose. Instead of manually configuring each application component separately, Docker Compose allowed the services, network, ports, and persistent volumes to be defined as infrastructure as code.

Persistent storage was especially important because application data should not disappear when containers are restarted or recreated. The use of Docker named volumes for MariaDB and Nextcloud provided a foundation for maintaining application data.

Security was also an important part of the project. UFW was configured to control access to the server and allow only the required services. This reinforced the principle that infrastructure should not expose unnecessary ports or services.

Troubleshooting was one of the most valuable parts of the experience. I encountered problems with Docker Compose YAML configuration, networking, browser access, and firewall connectivity. Solving these problems taught me to test each layer individually instead of changing multiple components at the same time.

Overall, the missions helped me move from simply writing commands to understanding how infrastructure decisions affect application availability, security, and maintainability. The final Nextcloud deployment demonstrated that a virtualized Ubuntu server can host a multi-container application with persistent storage and controlled network access.

This project also showed me that documentation is an important part of infrastructure work. A working system is not enough; another IT administrator should be able to understand how the system was deployed, how it is maintained, and how to troubleshoot it. The operational manual and project repository therefore serve as the handover documentation for the completed infrastructure.

The experience from Mission 1 through Mission 10 gave me a stronger foundation in virtualization, Linux administration, networking, Docker, container orchestration, security, persistent storage, automation, troubleshooting, and technical documentation. These skills will be useful in future cloud, DevOps, and infrastructure projects.
