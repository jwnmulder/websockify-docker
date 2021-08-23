FROM python:3.9.6-slim-bullseye

RUN pip install websockify

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
