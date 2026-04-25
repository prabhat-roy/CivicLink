.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/push-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t civiclink/push-service:latest .

docker-run:
	docker run --rm -p 50323:50323 --env-file .env civiclink/push-service:latest