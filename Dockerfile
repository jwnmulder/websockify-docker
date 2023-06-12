FROM python:3.11.4-slim-bullseye@sha256:1966141ab594e175852a033da2a38f0cb042b5b92896c22073f8477f96f43b06

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
