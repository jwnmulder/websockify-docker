FROM python:3.9.7-slim-bullseye@sha256:4204a74395adcc24fa57f2b83d7fa8f6d1fd4fe65ba29cfc37bff11cf45aa121

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
