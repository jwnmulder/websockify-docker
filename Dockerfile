FROM python:3.9.7-slim-bullseye@sha256:8402d0ea6e4eaeba7b390dfe522496e365334daaeb05361b24636f2407e10aae

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
