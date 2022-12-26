FROM python:3.11.1-slim-bullseye@sha256:8f3997244336ad0f067ad693f85906263a21a7f571b6577a64134aba889bc95e

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
