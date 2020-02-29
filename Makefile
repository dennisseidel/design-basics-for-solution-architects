################################################################################
# build pdf and release
################################################################################

.PHONY: build-pdf all

build-pdf:
	docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` docker.pkg.github.com/denseidel/pandoc-docker/pandoc-with-filter:2.9.1.1 \
    --pdf-engine=xelatex \
    --template=./templates/eisvogel.latex \
    --highlight-style tango \
    --toc -N \
    --filter pandoc-crossref \
    -o build/output.pdf \
    src/title.txt src/*.md
