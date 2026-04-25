.PHONY: install run test lint docker-build

install:
	python -m pip install --user -r requirements.txt

run:
	python main.py

test:
	python -m pytest -v

lint:
	python -m ruff check .

docker-build:
	docker build -t civiclink/grievance-service:latest .

docker-run:
	docker run --rm -p 50220:50220 --env-file .env civiclink/grievance-service:latest