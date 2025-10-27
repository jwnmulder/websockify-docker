FROM python:3.13.9-slim-bookworm@sha256:4c9fe962f6ce46ecf3633a7e9d0a9fb7f5622121ee00d628eff206da024147c9

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
