FROM python:3.12.9-slim-bookworm@sha256:a866731a6b71c4a194a845d86e06568725e430ed21821d0c52e4efb385cf6c6f

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
