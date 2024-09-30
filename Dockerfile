FROM python:3.12.6-slim-bookworm@sha256:ad48727987b259854d52241fac3bc633574364867b8e20aec305e6e7f4028b26

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
