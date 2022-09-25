install:
	#install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
lint:
	#flake8 or #pylint
	pylint --disable=R,C *.py
	
test:
	#test
	python -m pytest -vv --cov=devopslib test_*.py
format:
	#format code
	black *.py 
all:
	install lint test format