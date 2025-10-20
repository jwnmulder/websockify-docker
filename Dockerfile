FROM python:3.13.9-slim-bookworm@sha256:ee6c0814498e24cc54424475b9611edb99072250b2b30f9fb83d9256a1469b7a

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
