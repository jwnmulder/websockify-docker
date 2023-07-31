FROM python:3.11.4-slim-bullseye@sha256:52c7a54aa5e5068ce76edaf3f8652a64fb99e378fb89fb0bfbe21a8756d0013c

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
