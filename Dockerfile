FROM python:3.10.1-slim-bullseye@sha256:dd3016f846b8f88d8f6c28b43f1da899f07259121aff403091e6f89a703c3d36

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
