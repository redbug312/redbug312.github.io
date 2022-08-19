MODULE_PATH := ./node_modules/.bin
export PATH := ${MODULE_PATH}:$(PATH)

PUG ?= pug --basedir resume/template

.PHONY: build
build: resume/index.html

resume/index.html: resume/template/zh_TW.pug resume/template/base.pug
	$(PUG) < $< > $@
