FROM python:3.11.2-slim-bullseye@sha256:d0e839882b87135b355361efeb9e9030c9d2a808da06434f4c99eb4009c15e64

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
