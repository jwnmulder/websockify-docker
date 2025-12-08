FROM python:3.13.10-slim-bookworm@sha256:d3fef00fbd9ab948d206fe74c1bdd8105f535e5bd90a6074558c31c328ae48b7

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
