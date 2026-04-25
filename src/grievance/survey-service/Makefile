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
	docker build -t civiclink/survey-service:latest .

docker-run:
	docker run --rm -p 50223:50223 --env-file .env civiclink/survey-service:latest