FROM python:3.11.8-slim-bookworm@sha256:2a746e2b9dfd9c155e1218ee5bcaad64c3c8816258c0ee7d25f3893ed2252a1e

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
