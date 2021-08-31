FROM python:3.9.7-slim-bullseye@sha256:5216fe57981692c7b9efbb824f10b1be5bbd2bf056a7ece7fcbb5ae0ac2b928b

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
