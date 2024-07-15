FROM python:3.12.4-slim-bookworm@sha256:f11725aba18c19664a408902103365eaf8013823ffc56270f921d1dc78a198cb

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
