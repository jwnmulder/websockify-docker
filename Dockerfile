FROM python:3.11.2-slim-bullseye@sha256:1d2b7101658e795e4d878d3f54f3354838630e1d16f5868ea18b338c12bb92c9

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
