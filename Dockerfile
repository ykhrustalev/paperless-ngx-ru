# Paperless-ngx with Russian language support
FROM ghcr.io/paperless-ngx/paperless-ngx:2.19.6

# Install Russian language support for Tesseract OCR
RUN apt-get update && \
    apt-get install -y tesseract-ocr-rus && \
    rm -rf /var/lib/apt/lists/*

LABEL org.opencontainers.image.title="Paperless-ngx with Russian Support"
LABEL org.opencontainers.image.description="Paperless-ngx with Tesseract Russian language pack"
LABEL org.opencontainers.image.source="https://github.com/ykhrustalev/paperless-ngx-ru"
