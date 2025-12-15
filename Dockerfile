FROM python:3.13.11-slim-bookworm@sha256:ac4274977cc5093aa7675b5f39e59403c7b692d0bf7549b49563177ddc02552d

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
