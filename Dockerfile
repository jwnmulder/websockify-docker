FROM python:3.14.4-slim-bookworm@sha256:a28fb284c750940c714dba2e0cf5a26e5121c3c5ed06e9ca8bcfeaaba701b614

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
