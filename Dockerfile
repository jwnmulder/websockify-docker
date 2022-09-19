FROM python:3.10.7-slim-bullseye@sha256:6de22c9cf887098265b7614582b00641c0c8c6735af538d0f267d6bb457634f1

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
