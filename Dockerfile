FROM python:3.9.7-slim-bullseye@sha256:68e390de0610bfd4fe9c9bf5be5f0e1d67b103094f818efc2e3a8e12d7bf812b

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
