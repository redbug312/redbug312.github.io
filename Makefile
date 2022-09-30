MODULE_PATH := ./node_modules/.bin
export PATH := ${MODULE_PATH}:$(PATH)

PUG ?= pug --basedir resume/template --pretty

.PHONY: build
build: resume/en.html resume/zh.html resume/index.html

resume/index.html: resume/en.html
	ln -sf $(notdir $^) $@

resume/%.html: resume/template/%.pug resume/template/base.pug
	$(PUG) < $< > $@
