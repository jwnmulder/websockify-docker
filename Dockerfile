FROM python:3.10.5-slim-bullseye@sha256:f9f03f46267e182193544299504687e711c623e2a085323138f94ed9b01ce641

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
