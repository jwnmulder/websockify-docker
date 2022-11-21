FROM python:3.10.8-slim-bullseye@sha256:14f47505ae036cc75cdefbfd4c734682c0411b4109bc0419db0f17f8a8624f66

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
