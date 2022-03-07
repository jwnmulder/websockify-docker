FROM python:3.10.2-slim-bullseye@sha256:3c87795ae452dd07ab6c87d1d2ba9ae9cc6f0063c49b8ae5c06e13ecfbae9d4d

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
