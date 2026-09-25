
# Checkpoint 5 - Technical Documentation

## MinIO Deployment

I deployed the MinIO object storage server using Docker. Docker made the deployment easier because MinIO could run inside a container without requiring a manual installation of all its dependencies.

### Docker Command

The Docker command I used to deploy the MinIO server was:


docker run -d --name minio \
  -p 9000:9000 \
  -p 9001:9001 \
  -e "MINIO_ROOT_USER=admin" \
  -e "MINIO_ROOT_PASSWORD=minioadmin" \
  quay.io/minio/minio server /data --console-address ":9001"
```

### Web Console Port

The MinIO web console was accessed using **port 9001**. The console can be opened through:

```text
http://localhost:9001
```

Port **9000** was used for the MinIO API, while port **9001** was used for the web console.

### Bucket Created

After accessing the MinIO web console, I created a bucket named:

```text
photos
```

The bucket is used as a container for storing objects such as images and other files.

### Deployment Summary

The deployment was completed by running MinIO inside a Docker container, accessing the web console through port **9001**, and creating the **photos** bucket for object storage.
