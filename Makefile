EXAMPLE_SITE := exampleSite
CONFIG_GH_PAGES := config_for_github_pages.toml
CONFIG := config.toml
THEMES := ../../
OUTPUT_RAW := docs
OUTPUT := ../${OUTPUT_RAW}

docs:
	mkdir ${OUTPUT_RAW}
	hugo -s ${EXAMPLE_SITE} --config ${CONFIG_GH_PAGES} --themesDir ${THEMES} -d ${OUTPUT}

server:
	hugo -s ${EXAMPLE_SITE} --themesDir ${THEMES} server

.PHONY: docs
