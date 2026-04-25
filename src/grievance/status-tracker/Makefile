.PHONY: install run test lint docker-build

install:
	npm install

run:
	npm run start

dev:
	npm run dev

test:
	npm test

docker-build:
	docker build -t civiclink/status-tracker:latest .

docker-run:
	docker run --rm -p 50222:50222 --env-file .env civiclink/status-tracker:latest