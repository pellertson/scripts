DESTDIR = $(HOME)/.local/bin
SRCDIR = src

install:
	chmod -R 755 $(SRCDIR)
	mv $(SRCDIR)/* $(DESTDIR)

default: install