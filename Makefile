.PHONY: default deb skip ch

default: skip

all: skip

ch:
	git-dch -R --auto -c --git-author

deb:
	git-buildpackage

skip:
	echo "Tabularasa"
