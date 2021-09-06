FROM python:3.9.7-slim-bullseye@sha256:d78f8a5d9f6f68636e0ba0120027be2ad440cd2d69007dc2cf7362ef443085b7

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
