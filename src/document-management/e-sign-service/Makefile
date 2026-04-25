.PHONY: build test run docker-build docker-run

build:
	gradle classes

test:
	gradle test

run:
	gradle bootRun

bootJar:
	gradle bootJar

docker-build: bootJar
	docker build -t civiclink/e-sign-service:latest .

docker-run:
	docker run --rm -p 50261:50261 --env-file .env civiclink/e-sign-service:latest