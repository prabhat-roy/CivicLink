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
	docker build -t civiclink/assessment-service:latest .

docker-run:
	docker run --rm -p 50122:50122 --env-file .env civiclink/assessment-service:latest