FROM python:3.11.5-slim-bullseye@sha256:de917502e531b3f6e4a5acef017e9feef392cf3eb76826fd46d6810c70ae9b5e

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
