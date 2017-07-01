FROM python:3

RUN pip3 install Flask

COPY . /app

WORKDIR /app

ENTRYPOINT ["python3", "app.py"]
