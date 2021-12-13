FROM python:3.10.1-slim-bullseye@sha256:9ba08ac396df6210f82d3965811aea55bb94e78aeb4f830bbe0258b9678d51f5

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
