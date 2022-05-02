FROM python:3.10.4-slim-bullseye@sha256:ad719a882ac0594bdc92abccff22e5b6713bbf9893320264fd9e8affd8a6f470

WORKDIR /root

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Standard ports
EXPOSE 443
EXPOSE 80

ENTRYPOINT [ "python", "-m", "websockify" ]
