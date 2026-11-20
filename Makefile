setup:
	python -m venv .venv && .venv/bin/pip install -e ".[dev]"
	cp -n .env.example .env || true

up:
	docker compose up -d

test:
	pytest -q

lint:
	ruff check src tests

pipeline:
	docker compose run --rm collector
	