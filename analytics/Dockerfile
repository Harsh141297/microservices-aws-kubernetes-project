FROM python:3.8-alpine

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5153
ENV APP_PORT=5153 DB_USERNAME=user DB_PASSWORD=pass DB_HOST=127.0.0.1 DB_PORT=5432 DB_NAME=postgres

ENTRYPOINT ["python", "app.py"]