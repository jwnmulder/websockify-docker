FROM python:3.10.6-slim-bullseye@sha256:59129c9fdea259c6a9b6d9c615c065c336aca680ee030fc3852211695a21c1cf

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
