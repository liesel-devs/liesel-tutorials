:warning: **This repository is archived.** Please see the [project homepage](https://liesel-project.org) and the [main repository](https://github.com/liesel-devs/liesel/tree/main/docs/source/tutorials) instead.

# Liesel Tutorials

This repository contains the code for the tutorial book for the [Liesel](https://github.com/liesel-devs/liesel) probabilistic programming framework. Please take a look at [the compiled book](https://liesel-devs.github.io/liesel-tutorials) first, unless you want to contribute to the tutorials.

## Development

- The Jupyter Notebooks are paired with the R Markdown files with [Jupytext](https://jupytext.readthedocs.io/en/latest/). If you change a Jupyter Notebook, the R Markdown file will be updated automatically, and vice versa.
- To set up the virtual environment for the development, use `pipenv sync --dev`.
- Before committing your work, please run `pre-commit run -a`. This will also sync the Jupyter Notebooks and the R Markdown files.
- To build the book, call `make`. This requires the R packages `bookdown` and `rliesel`.

### Other remarks

- Don't use the underscore (`_`) as a variable name in the tutorials. It seems to have a special meaning in Python cells in R Markdown.
