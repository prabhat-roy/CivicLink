.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/audit-trail .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t civiclink/audit-trail:latest .

docker-run:
	docker run --rm -p 50340:50340 --env-file .env civiclink/audit-trail:latest