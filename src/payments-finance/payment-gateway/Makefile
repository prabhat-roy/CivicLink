.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/payment-gateway .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t civiclink/payment-gateway:latest .

docker-run:
	docker run --rm -p 50240:50240 --env-file .env civiclink/payment-gateway:latest