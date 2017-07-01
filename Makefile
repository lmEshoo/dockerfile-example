.PHONY: helping hand

IMAGE=lmestar/app-example
CONTAINER_NAME=app

all: build run

build:
	docker build -t $(IMAGE) .

run:
	docker run -it --rm --name $(CONTAINER_NAME) -e ECHO="HI" -d -p 5000:5000 $(IMAGE)

stop:
	docker stop $(CONTAINER_NAME)
