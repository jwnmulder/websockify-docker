FROM python:3.11.4-slim-bullseye@sha256:91d194f58f50594cda71dcd2e8fdefd90e7ecc57d07823813b67c8521e565dcd

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
