FROM python:3.11.1-slim-bullseye@sha256:33a1008485e1a2dc565be79ece483b240cbc4d6266d6144a57a5a9965ede9bbf

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
