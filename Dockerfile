FROM python:3.10.8-slim-bullseye@sha256:9329ab1d70fe2ea0b5d56898670b0a4e35cef6cc5e593adcb8d950ed252a2917

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
