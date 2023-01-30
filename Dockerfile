FROM python:3.11.1-slim-bullseye@sha256:3d260508893319ee271989fe16c0ddf13c710ec5ce1d0708cda7bc30da8389e7

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
