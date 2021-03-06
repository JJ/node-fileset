
all: help

help:
	bake -h

test:
	mocha -R spec test

eslint:
	eslint .

fix:
	eslint . --fix

release: version push publish

version:
	standard-version -m '%s'

push:
	git push origin master --tags

publish:
	npm publish
