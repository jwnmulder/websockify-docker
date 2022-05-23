FROM python:3.10.4-slim-bullseye@sha256:54956d6c929405ff651516d5ebbc204203a6415c9d2757aaddcde35be680431e

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
