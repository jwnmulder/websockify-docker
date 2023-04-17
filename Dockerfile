FROM python:3.11.3-slim-bullseye@sha256:286f2f1d6f2f730a44108656afb04b131504b610a6cb2f3413918e98dabba67e

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
