.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/in-app-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t civiclink/in-app-service:latest .

docker-run:
	docker run --rm -p 50324:50324 --env-file .env civiclink/in-app-service:latest