FROM python:3.10-slim-buster

WORKDIR /app

COPY ./analytics/requirements.txt .

RUN pip cache purge

RUN pip install --no-cache-dir -r requirements.txt

COPY ./analytics/* ./
COPY ./db .

EXPOSE 5153
ENV APP_PORT=5153 DB_USERNAME=user DB_PASSWORD=pass DB_HOST=127.0.0.1 DB_PORT=5432 DB_NAME=postgres

ENTRYPOINT ["python", "app.py"]