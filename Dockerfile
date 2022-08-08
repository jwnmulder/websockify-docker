FROM python:3.10.6-slim-bullseye@sha256:2124d4f8ccbd537500de16660a876263949ed9a9627cfb6141f418d36f008e9e

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
