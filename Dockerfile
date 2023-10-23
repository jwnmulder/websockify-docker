FROM python:3.11.6-slim-bookworm@sha256:d36d3fb6c859768ec62ac36ddc7397b5331d8dc05bc8823b3cac24f6ade97483

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
