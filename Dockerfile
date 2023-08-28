FROM python:3.11.5-slim-bullseye@sha256:0bc6588e043ceff0278c3936467fce6dad52c5889bf4eb257ad5147a17522064

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
