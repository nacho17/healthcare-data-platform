setup:
	python -m venv .venv
	. .venv/Scripts/activate && pip install -r requirements.txt

ingest:
	python pipelines/ingest.py

transform:
	dbt run

validate:
	python pipelines/validate.py

run:
	make ingest
	make transform
	make validate
