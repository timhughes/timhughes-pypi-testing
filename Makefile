#
# vim:ft=make
# Makefile
#
.DEFAULT_GOAL := help
.PHONY: test help


help:  ## these help instructions
	@sed -rn 's/^([a-zA-Z_-]+):.*?## (.*)$$/"\1" "\2"/p' < $(MAKEFILE_LIST)|xargs printf "make %-20s# %s\n"

hidden: # example undocumented, for internal usage only
	@true

pydoc: ## Run a pydoc server and open the browser
	poetry run python -m pydoc -b

install: ## Run `poetry install`
	poetry install

showdeps: ## run poetry to show deps
	@echo "CURRENT:"
	poetry show --tree
	@echo
	@echo "LATEST:"
	poetry show --latest

lint: ## Runs bandit and black in check mode
	poetry run black . --check --target-version=py36
	@echo '-------------------------------'
	poetry run bandit -r src

format: ## Formats you code with Black
	poetry run black . --target-version=py36

test: hidden ## run pytest with coverage
	poetry run pytest -v --cov timhughes_pypi_testing

run: ## run `poetry run timhughes-pypi-testing`
	poetry run timhughes-pypi-testing

bumpversion: ## bumpversion
	poetry run bump2version --tag --current-version $(git describe --tags --abbrev=0) --tag-name '{new_version}' patch

build: install lint test ## run `poetry build` to build source distribution and wheel
	poetry build
