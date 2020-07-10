FROM python:3-slim

ENV PYTHONBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN mkdir /app
WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

CMD ["/bin/bash", "./start-server.sh"]

# sudo docker run --env-file local.env -p 8000:8000 --name gdpr gdpr_registry_app:latest