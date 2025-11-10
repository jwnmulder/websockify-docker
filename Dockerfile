FROM python:3.13.9-slim-bookworm@sha256:e66df2153a7cc47b4438848efb65e2d9442db4330db9befaee5107fc75464959

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
