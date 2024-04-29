FROM python:3.11.9-slim-bookworm@sha256:6d2502238109c929569ae99355e28890c438cb11bc88ef02cd189c173b3db07c

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
