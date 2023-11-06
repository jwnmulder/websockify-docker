FROM python:3.11.6-slim-bookworm@sha256:f89d4d260b6a5caa6aa8e0e14b162deb76862890c91779c31f762b22e72a6cef

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
