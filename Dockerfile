FROM python:3.12.9-slim-bookworm@sha256:aaa3f8cb64dd64e5f8cb6e58346bdcfa410a108324b0f28f1a7cc5964355b211

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
