EXAMPLE_SITE := exampleSite
CONFIG_GH_PAGES := exampleSite/config_for_github_pages.toml
CONFIG := exampleSite/config.toml
CONTENT := exampleSite/content
THEMES := ../../
OUTPUT := ../docs

docs:
	hugo -s ${EXAMPLE_SITE} --themesDir ${THEMES} -d ${OUTPUT}

server:
	hugo -s ${EXAMPLE_SITE} --themesDir ${THEMES} server

.PHONY: docs
