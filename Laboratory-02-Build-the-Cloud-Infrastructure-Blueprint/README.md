# Laboratory 02 – Build the Cloud Infrastructure Blueprint

Mission Overview

This laboratory activity focused on examining a Linux-based cloud server and understanding the main resources that support a cloud environment. It also involved comparing the services of AWS, Microsoft Azure, and Google Cloud Platform, as well as creating a simple cloud infrastructure design for a fictional company.


Objectives

The objectives of this laboratory were to:

-Investigate the operating system, hardware resources, storage, and network settings of a Linux server.

-Identify the main components of cloud infrastructure and explain their functions.

-Compare equivalent infrastructure services from AWS, Microsoft Azure, and Google Cloud Platform.

-Design a simple cloud infrastructure containing a user, internet connection, network, compute resource, and storage resource.

-Practice writing organized technical documentation using Markdown.


Cloud Infrastructure Components

Component

Purpose

Example in the KillerCoda Environment

Compute Resources

Provide the processing power and memory needed to run commands, programs, and services.

Virtual CPU cores and RAM assigned to the Linux server.

Storage Resources

Keep the operating system, applications, configuration files, and user data.

Virtual disks, partitions, and mounted Linux file systems.

Networking Resources

Allow the server to communicate with other devices, servers, and internet services.

A virtual network interface, IP address, gateway, and routing configuration.

Operating System

Manages the server's hardware and software while providing tools for system administration.

The Linux distribution and kernel running in KillerCoda.  





Tools Used

-KillerCoda – Provided the temporary Linux cloud environment used for the investigation.

-Linux Terminal – Used to execute commands and collect system information.

-GitHub – Used to organize and store the laboratory files and screenshots.

-Markdown – Used to format the technical reports and README file.

-Official Cloud Documentation – Used to research AWS, Microsoft Azure, and Google Cloud services.

-Diagramming Tool – Used to design and export the cloud infrastructure diagram as a PNG file.



Linux Commands Executed

Command                                                 Purpose

cat /etc/os-release                              Displays the name and version of the Linux operating system.   
                                                 Shows the current Linux kernel version.    
uname -r
                                                  Shows the current Linux kernel version.              
lscpu
                                          Provides detailed information about the processor and CPU architecture.

nproc-                                   Displays the number of available CPU processing cores.

free -h-                                Shows the total, used, and available memory in a readable format

lsblk-                                 Lists the server's storage devices and partitions.

df -h-                                 Displays disk capacity and file-system usage in a readable format.

findmnt-                              Lists the mounted file systems and their mount locations.

hostname-                             Displays the hostname assigned to the Linux server.

hostname -I -                         Shows the IP addresses assigned to the server.

ip addr-                              Displays the network interfaces and their IP address information.

ip route-                             Shows the server's network routes and default gateway.


Skills Learned

-Through this laboratory activity, I learned how to:
-Navigate and use a Linux terminal.
-Collect important system information using Linux commands.
-Recognize compute, storage, networking, and operating-system resources.
-Compare similar services offered under different names by major cloud providers.
-Read and use official technical documentation as a reliable source.
-Create a basic cloud architecture diagram.
-Organize project files and write documentation using Markdown.


Challenges Encountered

One challenge was identifying the correct information from the detailed output of Linux commands. I addressed this by reviewing each command carefully and recording only the values required for the infrastructure report.

Another challenge was comparing cloud services because AWS, Azure, and GCP use different names for products that perform similar functions. Reading their official documentation helped me identify the correct equivalent services.

I also needed to make sure that the folders, filenames, screenshots, and Markdown files followed the required repository structure. Checking the expected structure before uploading each file helped keep the laboratory submission organized.



