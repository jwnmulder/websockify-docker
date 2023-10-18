FROM python:3.11.6-slim-bookworm@sha256:fda05d00fc47a4133a1b65bdd89007facf4ec0fa5fb737a35652699b18029830

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
