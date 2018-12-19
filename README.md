# maintenance

Docker image for hosting a Biola-branded maintenance page with nginx. Creates a self-signed cert and key if the files don't exist.

## Building an image

Build the Docker image:

```
docker build -t biola/maintenance:latest .
```

Then push to Docker Hub:

```
docker push biola/maintenance:latest
```

## Usage

Running the image and listening on ports 80/443:

```
docker run -d -p 80:80 -p 443:443 biola/maintenance
```

To use a signed certificate, place `cert.pem` and `key.pem` in a directory and bind mount a volume:

```
docker run -d -p 80:80 -p 443:443 -v /path/to/cert_dir:/etc/nginx/certs:ro biola/maintenance
```
