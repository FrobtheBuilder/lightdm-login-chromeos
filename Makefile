.PHONY: default deb skip ch clean install

default: skip

all: skip

ch:
	git-dch -R --auto -c --git-author

deb:
	git-buildpackage

clean: 
	rm ../build-area/* || exit 0

install:
	sudo dpkg -i ../build-area/$(ls | grep deb)

skip:
	echo "Tabularasa"
