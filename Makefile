install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=app test_app.py

lint:
	pylint --disable=R,C app.py

format:
	black *.py

run-uvicorn:
	uvicorn main:app --reload

killweb:
	sudo killall uvicorn

run:
	python app.py

all: install lint test