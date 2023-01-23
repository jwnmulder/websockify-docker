FROM python:3.11.1-slim-bullseye@sha256:79095e304e31196bad049e74f666508ac81909d201ec9371f9f3cd68fa365cf6

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
