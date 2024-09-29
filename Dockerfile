FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt . 

RUN apt-get update -y &&\
    apt-get install -y gcc &&\
    pip3 install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5001

ENV FLASK_RUN_HOST=0.0.0.0 FLASK_RUN_PORT=5001

CMD [ "flask", "run" ]