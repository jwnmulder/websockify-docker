FROM python:3.10.2-slim-bullseye@sha256:8324222536bd1d09aeedfd9236998a227ae482411b271d0e10e61dbac899e403

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
