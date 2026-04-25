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
	docker build -t civiclink/incident-reporting:latest .

docker-run:
	docker run --rm -p 50200:50200 --env-file .env civiclink/incident-reporting:latest