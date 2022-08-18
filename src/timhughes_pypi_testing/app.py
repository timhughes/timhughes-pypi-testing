import logging

logger = logging.getLogger("timhughes_pypi_testing")


class App:
    def __init__(self, settings):
        self.settings = settings

    def start(self):
        logger.info("timhughes_pypi_testing Starting")

    def stop(self):
        logger.info("timhughes_pypi_testing Stopping")
