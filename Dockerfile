FROM python:3.9.6-slim-bullseye

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
