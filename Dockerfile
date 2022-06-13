FROM python:3.10.5-slim-bullseye@sha256:ca78039cbd3772addb9179953bbf8fe71b50d4824b192e901d312720f5902b22

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
