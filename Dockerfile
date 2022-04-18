FROM python:3.10.4-slim-bullseye@sha256:80ebadfc9b83cf037ebe9a7db0631101b7c18c58f4197de0ef2badb268a35a45

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
