FROM python:3.10.4-slim-bullseye@sha256:43705a7d3a22c5b954ed4bd8db073698522128cf2aaec07690a34aab59c65066

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
