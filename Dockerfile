FROM python:3.14.10-slim-bookworm@sha256:e60ad028afdcdd14772a3d46decf0eaf616720f9102aeb4397a2045ff6718c3d

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
