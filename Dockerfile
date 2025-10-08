FROM python:3.14.0-slim-bookworm@sha256:beb612b6c3f2c1d618d17ec5ce25a0f3dcb8d58b61f9b69abb7ad9fa413da3d0

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
