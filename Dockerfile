FROM python:3.13.13-slim-bookworm@sha256:3b4243071f0d572cd8f286db92a6fdaed9ae6e3abe278d4633ed460243c7fb32

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
