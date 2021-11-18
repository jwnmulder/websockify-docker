FROM python:3.10.0-slim-bullseye@sha256:3524d9553dd1ea815d9e3ff07a0ccafe878a9403fb5f9956dc6ad86075ac345f

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
