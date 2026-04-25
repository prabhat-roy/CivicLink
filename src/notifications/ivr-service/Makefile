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
	docker build -t civiclink/ivr-service:latest .

docker-run:
	docker run --rm -p 50325:50325 --env-file .env civiclink/ivr-service:latest