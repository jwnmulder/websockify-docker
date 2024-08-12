FROM python:3.12.5-slim-bookworm@sha256:105e9d85a67db1602e70fa2bbb49c1e66bae7e3bdcb6259344fe8ca116434f74

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
