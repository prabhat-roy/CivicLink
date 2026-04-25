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
	docker build -t civiclink/traffic-violation:latest .

docker-run:
	docker run --rm -p 50202:50202 --env-file .env civiclink/traffic-violation:latest