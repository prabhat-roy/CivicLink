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
	docker build -t civiclink/email-service:latest .

docker-run:
	docker run --rm -p 50322:50322 --env-file .env civiclink/email-service:latest