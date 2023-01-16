FROM python:3.11.1-slim-bullseye@sha256:073caf67fbbfad42fbadc5a7282edec4fb88cb53a177318f46991acf9a0c30c1

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
