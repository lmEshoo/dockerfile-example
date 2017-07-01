FROM python:3

RUN pip install Flask

COPY . /app
