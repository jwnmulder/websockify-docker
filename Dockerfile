FROM python:3.9.7-slim-bullseye@sha256:3d82b79bec5506b8bb8877e91061597c5b750ca38e7eef0ea5dcbd229fbcb9d4

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
