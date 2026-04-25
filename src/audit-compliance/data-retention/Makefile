.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/data-retention .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t civiclink/data-retention:latest .

docker-run:
	docker run --rm -p 50341:50341 --env-file .env civiclink/data-retention:latest