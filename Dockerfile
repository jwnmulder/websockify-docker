FROM python:3.10.7-slim-bullseye@sha256:c0a3f67a6c43f11313e853e7937d87ebf0353c967eb7deccfc5f7d39a1d644b3

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
