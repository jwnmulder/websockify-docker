FROM python:3.10.2-slim-bullseye@sha256:ca2a31f21938f24bab02344bf846a90cc2bff5bd0e5a53b24b5dfcb4519ea8a3

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
