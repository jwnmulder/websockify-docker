FROM python:3.10.3-slim-bullseye@sha256:5e3ef2605e09523e679018ee6cb810a0f5c4382e636f80f33e4c4edb66b1d3ca

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
