FROM python:3.9.7-slim-bullseye@sha256:8434c99df85cc274108beac4465d4abbc4459956bb2b7a84073636ac5f4b7c1a

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
