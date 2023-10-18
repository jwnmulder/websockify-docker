FROM python:3.12.0-slim-bookworm@sha256:fde1011b3a944e4e750982480905b563fd08a0f3fde49b963b05d8ebf6846ce8

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
