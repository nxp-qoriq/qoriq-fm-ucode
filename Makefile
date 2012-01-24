# Makefile for generating the archive containing the herein ucode binaries
# (look for the result in the parent dir. of this git tree).

DATE=$(shell date +%Y%m%d)

all:
	tar -czf ../fm-ucode-$(DATE).tar.gz . \
		--transform "s/\\.\\(.*\\)/fm-ucode-$(DATE)\\1/" \
		--exclude=Makefile --exclude=.version --exclude-vcs
	echo $(DATE) > .version
