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
	docker build -t civiclink/epidemic-tracking:latest .

docker-run:
	docker run --rm -p 50162:50162 --env-file .env civiclink/epidemic-tracking:latest