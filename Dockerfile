FROM python:3.11.7-slim-bookworm@sha256:53d6284a40eae6b625f22870f5faba6c54f2a28db9027408f4dee111f1e885a2

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
