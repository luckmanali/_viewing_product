SHELL:= /bin/bash

work_dir = ${HOME}/dev/itv/_viewing_product

lint:
	pylint --output-format-parseable --rcfile=pylint.rc src

test_src:
	pytest -v test

build:
	cd ${work_dir}
	zip -r builds/viewing_product.zip src

clean:
	rm -Rf builds