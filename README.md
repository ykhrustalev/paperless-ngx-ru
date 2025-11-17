# Paperless-ngx with Russian Language Support

This repository provides a Docker image based on [paperless-ngx](https://github.com/paperless-ngx/paperless-ngx) with added Russian language support for Tesseract OCR.

When using in rootless mode you can't install additional packages.

## Usage

```bash
docker pull ghcr.io/ykhrustalev/paperless-ngx-ru:latest
```

Run with Russian OCR enabled:

```bash
docker run -d \
  --name paperless \
  -p 8000:8000 \
  -e PAPERLESS_OCR_LANGUAGE=rus \
  ghcr.io/ykhrustalev/paperless-ngx-ru:latest
```

The image will be automatically built and published to GitHub Container Registry when you push to the main branch.
