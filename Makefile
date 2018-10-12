setup:
	python3 -m venv ~/.my430homework
	# here is how you source this
	#source ~/.my430homework/bin/activate

install:
	pip install -r requirements.txt

test:
	python -m pytest -vv tests/*.py
	#python -m pytest -vv --cov=myrepolib tests/*.py
	python -m pytest --nbval notebook.ipynb


lint:
	pylint --disable=R,C *.py

all: install lint test