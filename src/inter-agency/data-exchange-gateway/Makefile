.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/data-exchange-gateway .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t civiclink/data-exchange-gateway:latest .

docker-run:
	docker run --rm -p 50281:50281 --env-file .env civiclink/data-exchange-gateway:latest