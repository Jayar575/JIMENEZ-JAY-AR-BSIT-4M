# Checkpoint 6 – Mission Reflection

Object storage is more suitable for storing millions of photos because it is designed to handle large amounts of unstructured files. Instead of storing data in fixed blocks like traditional storage drives, object storage saves each file as an individual object with its own information and identifier. This makes it easier to organize, access, and manage a huge number of photos. It can also grow as more files are added without requiring the same type of storage management used with traditional hard drives.

Docker made deploying the MinIO storage server easier because it allowed me to run MinIO inside a ready-made container. I did not need to install and configure all of its requirements manually. By using Docker commands, I could quickly create and start the MinIO server. It also makes the setup easier to move or reproduce on another computer because the necessary environment is already included in the container.

A bucket is a storage container used to organize objects in an object storage system. For example, a bucket can be used to store photos, documents, or other types of files. It is somewhat similar to a folder, but it is specifically designed for managing objects and can have its own access permissions and settings.

Large companies can protect their data from physical server failures by creating multiple copies of their data. They may store these copies on different servers, drives, or even separate locations. Technologies such as replication, backups, and erasure coding can help recover information if one server or storage device stops working.

My confidence in using the Linux command line is gradually improving. At first, I was not very familiar with Linux commands, but after practicing tasks such as creating folders, checking files, and running Docker containers, I became more comfortable with the terminal. I now have a better understanding of how commands work and feel more confident using Linux without always depending on a graphical interface.
