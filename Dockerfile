FROM python:3.10.5-slim-bullseye@sha256:ac63ff0730358ed061589c374fa871958ba0e796b590741395ff3d5d95177fab

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
