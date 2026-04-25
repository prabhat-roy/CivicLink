.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/attestation-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t civiclink/attestation-service:latest .

docker-run:
	docker run --rm -p 50262:50262 --env-file .env civiclink/attestation-service:latest