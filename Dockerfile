FROM python:3.12.11-slim-bookworm@sha256:0175d8ff0ad1dc8ceca4bcf311c3e47d08807a940959fa1cdbcefa87841883a1

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
