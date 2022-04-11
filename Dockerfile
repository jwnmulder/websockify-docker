FROM python:3.10.4-slim-bullseye@sha256:425d893546dbb7c9984aad25cd219a4f9086e48e6990c0368aa2ce3670e9bc6e

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
