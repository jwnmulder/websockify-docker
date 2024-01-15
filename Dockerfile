FROM python:3.11.7-slim-bookworm@sha256:637774748f62b832dc11e7b286e48cd716727ed04b45a0322776c01bc526afc3

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
