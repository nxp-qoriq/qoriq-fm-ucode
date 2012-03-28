# Makefile for generating the archive containing the herein ucode binaries

DATE=$(shell date +%Y%m%d)

all:
	mkdir -p ./dist
	tar -czf ./dist/fm-ucode-$(DATE).tar.gz . \
		--transform "s/\\.\\(.*\\)/fm-ucode-$(DATE)\\1/" \
		--exclude=dist --exclude=Makefile --exclude=.version --exclude-vcs
	echo $(DATE) > .version

