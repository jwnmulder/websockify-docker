FROM python:3.13.12-slim-bookworm@sha256:8092ae2ef67061f9db412458dbdce44dbf16748fb3cae5cdbd020f467a9712d0

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
