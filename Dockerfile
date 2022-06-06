FROM python:3.10.4-slim-bullseye@sha256:557745c5e06c874ba811efe2e002aff21b6cc405b828952fcfa16dea52d56dbb

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
