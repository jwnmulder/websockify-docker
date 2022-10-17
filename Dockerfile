FROM python:3.10.8-slim-bullseye@sha256:b8f59f7f739c8e1dbb1f7cdd9b5abf4b198cae4ed23b5034cdc5b6e448c38e16

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
