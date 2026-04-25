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
	docker build -t civiclink/renewal-service:latest .

docker-run:
	docker run --rm -p 50082:50082 --env-file .env civiclink/renewal-service:latest