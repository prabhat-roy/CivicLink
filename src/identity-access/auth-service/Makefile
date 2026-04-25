.PHONY: build test run lint docker-build

build:
	cargo build

test:
	cargo test

run:
	cargo run

lint:
	cargo clippy -- -D warnings

release:
	cargo build --release

docker-build:
	docker build -t civiclink/auth-service:latest .

docker-run:
	docker run --rm -p 50020:50020 --env-file .env civiclink/auth-service:latest