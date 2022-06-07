.PHONY: pre-commit book
.DEFAULT_GOAL := book

IPYNBS := $(wildcard notebooks/*.ipynb)
RMDS := $(IPYNBS:notebooks/%.ipynb=rmarkdown/%.Rmd)

LIESELENV := $(shell pipenv --venv)
export LIESELENV

pre-commit:
	@echo "Running pre-commit"
	pre-commit run -a

book: pre-commit _bookdown.yml _output.yml book.bib index.Rmd style.css ${RMDS}
	@echo "Building book"
	Rscript -e "bookdown::render_book()"
