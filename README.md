# maintenance_docker

Docker image for hosting a Biola-branded maintenance page with nginx. Creates a self-signed cert and key if the files don't exist.

## Usage

```
docker run -d -p 80:80 -p 443:443 biola/maintenance_docker
```

To use a signed certificate, place `cert.pem` and `key.pem` in a directory and bind mount a volume:
```
docker run -d -p 80:80 -p 443:443 -v /path/to/cert_dir:/etc/nginx/certs:ro biola/maintenance_docker
```
