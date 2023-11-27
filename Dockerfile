FROM python:3.11.6-slim-bookworm@sha256:1bc6a3e9356d64ea632791653bc71a56340e8741dab66434ab2739ebf6aed29d

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
