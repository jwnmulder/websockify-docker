FROM python:3.9.7-slim-bullseye@sha256:8ca34144574637bb24baa62a767d1ef8be821d9ee7e6a16fa3ab628cb7f96c27

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
