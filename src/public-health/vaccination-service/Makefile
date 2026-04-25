.PHONY: build test run package docker-build

build:
	mvn -B compile

test:
	mvn -B test

run:
	mvn -B spring-boot:run

package:
	mvn -B package -DskipTests

docker-build: package
	docker build -t civiclink/vaccination-service:latest .

docker-run:
	docker run --rm -p 50160:50160 --env-file .env civiclink/vaccination-service:latest