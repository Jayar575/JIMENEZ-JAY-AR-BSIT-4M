# Checkpoint 2 - Research: Types of Cloud Storage

## Cloud Storage Comparison

| Storage Type       | Description                                                                                         | Primary Use Case                                                                                          | Cloud Provider Example |
| ------------------ | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | ---------------------- |
| **Block Storage**  | Divides data into individual blocks that can be stored and accessed separately.                     | Commonly used for databases, operating systems, and applications that require fast storage performance.   | **AWS EBS**            |
| **File Storage**   | Saves data as files arranged in folders and directories, similar to a regular computer file system. | Useful for sharing documents and files between different users or computers.                              | **AWS EFS**            |
| **Object Storage** | Saves files as objects, with each object containing the data, metadata, and a unique identifier.    | Suitable for storing large amounts of files such as photos, videos, backups, and other unstructured data. | **AWS S3**             |

## Explanation to the Client

For user-uploaded images, Object Storage is a suitable choice because it can store a very large number of files and can easily expand as more images are uploaded. It also provides an organized way to store and retrieve images while supporting reliable data management.

