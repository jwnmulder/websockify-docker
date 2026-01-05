FROM python:3.13.11-slim-bookworm@sha256:0c5171fd1e80d3133604e1006aa5f788c5f020631537dd1e09edcbe874bb8192

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
