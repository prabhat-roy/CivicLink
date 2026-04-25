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
	docker build -t civiclink/tax-registration:latest .

docker-run:
	docker run --rm -p 50120:50120 --env-file .env civiclink/tax-registration:latest