FROM python:3.10.0-slim-bullseye@sha256:ad540a471260fee5e5e1a99ee2acf142efe8c279a7a54315160d8033ba88f0d8

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
