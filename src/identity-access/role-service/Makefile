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
	docker build -t civiclink/role-service:latest .

docker-run:
	docker run --rm -p 50024:50024 --env-file .env civiclink/role-service:latest