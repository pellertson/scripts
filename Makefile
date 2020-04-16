DESTDIR_PREFIX = $(HOME)/.local

install:
	chmod -R 755 bin/*
	cp bin/* $(DESTDIR_PREFIX)/bin/

	chmod -R 644 share/*
	cp share/* $(DESTDIR_PREFIX)/share

default: install