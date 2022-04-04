FROM python:3.10.4-slim-bullseye@sha256:48991dce6601b7c3b8f08f21dc211608a1c233c76945e5435df4bae626a5f648

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
