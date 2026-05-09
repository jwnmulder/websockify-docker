FROM python:3.13.13-slim-bookworm@sha256:cfdfc1c32835000e04bf476b7679121da79b4a1e21e2a352985b40b3c275c0c8

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
