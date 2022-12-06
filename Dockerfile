FROM python:3.11.0-slim-bullseye@sha256:b5ee5360b357dcd0ab2e1cc5e22fa589b6734bbd55776df6b1700994febf1527

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
