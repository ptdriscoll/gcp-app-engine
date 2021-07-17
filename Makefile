install-local:
	pip install --upgrade pip &&\
		pip install -r requirements-local.txt

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
lint:
	pylint --disable=R,C main.py		

test:
	#python -m pytest -vv --cov=main main_test.py
	python main_test.py

all: install install-local lint test	
