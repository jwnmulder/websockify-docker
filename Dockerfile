FROM python:3.10.2-slim-bullseye@sha256:6faf002f0bce2ce81bec4a2253edddf0326dad23fe4e95e90d7790eaee653da5

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
