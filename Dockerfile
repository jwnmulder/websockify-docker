FROM python:3.11.8-slim-bookworm@sha256:a2eb07f336e4f194358382611b4fea136c632b40baa6314cb27a366deeaf0144

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
