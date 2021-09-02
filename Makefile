VENV = .venv
export VIRTUAL_ENV := $(abspath ${VENV})
export PATH := ${VIRTUAL_ENV}/bin:${PATH}

${VENV}:
	python3 -m venv $@

requirements: requirements.txt | ${VENV}
	pip install -r requirements.txt
	${VENV}/bin/webdrivermanager firefox chrome --linkpath ${VIRTUAL_ENV}/bin

test:
	${VENV}/bin/robot --argumentfile default.args testcases
	rm *.log

clean:
	rm -rf .venv
