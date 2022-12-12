FROM python:3.11.1-slim-bullseye@sha256:555dcc94587b4101de48664b45b19f17e099a3ab236dec629791f366e2f2e83c

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
