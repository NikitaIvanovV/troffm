PREFIX    = /usr/local
BINPREFIX = $(DESTDIR)$(PREFIX)/bin
SCRIPT    = troffm

INSTALL = install

all:

install:
	$(INSTALL) -d $(BINPREFIX)
	$(INSTALL) $(SCRIPT) $(BINPREFIX)

uninstall:
	$(RM) $(PREFIX)/bin/${SCRIPT}

.PHONY: all install uninstall
