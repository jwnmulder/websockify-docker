FROM python:3.10.4-slim-bullseye@sha256:cd62775c2141dc3d06c1b284ceda8ebe329d588ab398b0fc296248bca5fec64a

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
