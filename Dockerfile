FROM python:3.10.3-slim-bullseye@sha256:de3f55fdc4402a88db7cb53b82a053e247b00dac98c67fb2001a5998044a528a

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
