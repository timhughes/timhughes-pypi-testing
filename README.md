# timhughes-pypi-testing


[![PyPi](https://img.shields.io/pypi/v/timhughes-pypi-testing.svg)](https://pypi.python.org/pypi/timhughes-pypi-testing)
[![Travis](https://img.shields.io/travis/timhughes/timhughes-pypi-testing.svg)](https://travis-ci.com/timhughes/timhughes-pypi-testing)
[![Documentation](https://readthedocs.org/projects/timhughes-pypi-testing/badge/?version=latest)](https://timhughes-pypi-testing.readthedocs.io/en/latest/?badge=latest)
[![Updates](https://pyup.io/repos/github/timhughes/timhughes-pypi-testing/shield.svg)](https://pyup.io/repos/github/timhughes/timhughes-pypi-testing/)


A simple application


## Developing

Run `make` for help

    make install             # Run `poetry install`
    make showdeps            # run poetry to show deps
    make lint                # Runs bandit and black in check mode
    make format              # Formats you code with Black
    make test                # run pytest with coverage
    make build               # run `poetry build` to build source distribution and wheel
