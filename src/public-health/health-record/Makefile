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
	docker build -t civiclink/health-record:latest .

docker-run:
	docker run --rm -p 50161:50161 --env-file .env civiclink/health-record:latest