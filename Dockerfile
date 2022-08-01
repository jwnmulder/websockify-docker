FROM python:3.10.5-slim-bullseye@sha256:cacb3a7cdff9328f9487e1418ba18a2f1863902b2390267f3b98853d02e88214

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
