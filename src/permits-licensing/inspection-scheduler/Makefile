.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/inspection-scheduler .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t civiclink/inspection-scheduler:latest .

docker-run:
	docker run --rm -p 50083:50083 --env-file .env civiclink/inspection-scheduler:latest