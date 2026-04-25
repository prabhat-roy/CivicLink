.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/right-to-erasure .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t civiclink/right-to-erasure:latest .

docker-run:
	docker run --rm -p 50342:50342 --env-file .env civiclink/right-to-erasure:latest