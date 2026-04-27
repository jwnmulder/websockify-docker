FROM python:3.13.13-slim-bookworm@sha256:eabbb62836ee44c18d350821e9f78488bcf65134bf763ae9989d63e611fa04d9

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
