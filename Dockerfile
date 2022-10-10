FROM python:3.10.7-slim-bullseye@sha256:f2ee145f3bc4e061f8dfe7e6ebd427a410121495a0bd26e7622136db060c59e0

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
