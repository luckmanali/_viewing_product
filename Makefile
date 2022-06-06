SHELL:= /bin/bash

artefacts = ${HOME}/dev/itv/artefacts

lint:
	pylint --output-format-parseable --rcfile=pylint.rc src

test_src:
	pytest -v test

build:
	zip -r ${artefacts}/viewing_product.zip src
