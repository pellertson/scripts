DESTDIR = $(HOME)/.local/bin
SRCDIR = src

install:
	chmod -R 755 $(SRCDIR)
	cp $(SRCDIR)/* $(DESTDIR)

default: install