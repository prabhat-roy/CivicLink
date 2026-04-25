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
	docker build -t civiclink/clinic-service:latest .

docker-run:
	docker run --rm -p 50163:50163 --env-file .env civiclink/clinic-service:latest