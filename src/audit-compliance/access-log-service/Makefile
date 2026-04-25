.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/access-log-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t civiclink/access-log-service:latest .

docker-run:
	docker run --rm -p 50343:50343 --env-file .env civiclink/access-log-service:latest