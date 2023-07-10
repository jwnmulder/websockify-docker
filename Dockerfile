FROM python:3.11.4-slim-bullseye@sha256:9b4d90af2003eef5d862f8118d8645d37d170402645a09e48241a3e492a0d4dc

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
