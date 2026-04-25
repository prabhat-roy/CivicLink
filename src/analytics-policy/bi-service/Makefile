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
	docker build -t civiclink/bi-service:latest .

docker-run:
	docker run --rm -p 50303:50303 --env-file .env civiclink/bi-service:latest