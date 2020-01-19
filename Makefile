CONFIG_GH_PAGES := exampleSite/config_for_github_pages.toml
CONFIG := exampleSite/config.toml
CONTENT := exampleSite/content
THEMES := ../
OUTPUT := docs

docs:
	hugo --config ${CONFIG_GH_PAGES} -c ${CONTENT} --themesDir ${THEMES} -d ${OUTPUT}

server:
	hugo --config ${CONFIG} -c ${CONTENT} --themesDir ${THEMES} server

.PHONY: docs
