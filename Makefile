#
# Binaries.
#

CONVERTER = ./node_modules/.bin/css-to-radium

#
# Files.
#

STYLES = $(wildcard ./node_modules/basscss/css/basscss.css)
BUILD = index.js

#
# Install.
#

node_modules: package.json $(wildcard node_modules/*/package.json)
	@npm install
	@touch node_modules

clean:
	@rm -rf node_modules index.js *.log .tmp
.PHONY: clean

#
# Build.
#

index.js: node_modules
	@$(CONVERTER) < $(STYLES) > index.js && \
		echo 'var exports = module.exports ='  | cat - index.js > .tmp && mv .tmp index.js

build: index.js
.PHONY: build

