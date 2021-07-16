install-local:
	pip install --upgrade pip &&\
		pip install -r requirements-local.txt

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb
	python main_test.py

lint:
	pylint --disable=R,C main.py

all: install install-local lint test		