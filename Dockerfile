FROM python:3.12.8-slim-bookworm@sha256:123be5684f39d8476e64f47a5fddf38f5e9d839baff5c023c815ae5bdfae0df7

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
