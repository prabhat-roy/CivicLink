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
	docker build -t civiclink/marriage-service:latest .

docker-run:
	docker run --rm -p 50062:50062 --env-file .env civiclink/marriage-service:latest