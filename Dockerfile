FROM python:3.11.9-slim-bookworm@sha256:3800945e7ed50341ba8af48f449515c0a4e845277d56008c15bd84d52093e958

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
