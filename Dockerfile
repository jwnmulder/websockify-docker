FROM python:3.9.7-slim-bullseye@sha256:cd1045dbabff11dab74379e25f7974aa7638bc5ad46755d67d0f1f1783aee101

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
