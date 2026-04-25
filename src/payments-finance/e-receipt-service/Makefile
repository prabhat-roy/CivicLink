.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/e-receipt-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t civiclink/e-receipt-service:latest .

docker-run:
	docker run --rm -p 50243:50243 --env-file .env civiclink/e-receipt-service:latest