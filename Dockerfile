FROM python:3.9.7-slim-bullseye@sha256:bdefda2b80c5b4d993ef83d2445d81b2b894bf627b62bd7b0f01244de2b6ab14

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
