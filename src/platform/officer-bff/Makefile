.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/officer-bff .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t civiclink/officer-bff:latest .

docker-run:
	docker run --rm -p 50002:50002 --env-file .env civiclink/officer-bff:latest