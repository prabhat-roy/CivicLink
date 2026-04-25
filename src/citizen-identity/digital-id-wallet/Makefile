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
	docker build -t civiclink/digital-id-wallet:latest .

docker-run:
	docker run --rm -p 50041:50041 --env-file .env civiclink/digital-id-wallet:latest