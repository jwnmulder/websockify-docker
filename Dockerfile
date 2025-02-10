FROM python:3.12.9-slim-bookworm@sha256:34656cd90456349040784165b9decccbcee4de66f3ead0a1168ba893455afd1e

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
