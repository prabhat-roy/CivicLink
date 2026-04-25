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
	docker build -t civiclink/eligibility-engine:latest .

docker-run:
	docker run --rm -p 50141:50141 --env-file .env civiclink/eligibility-engine:latest