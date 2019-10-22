prefix := /usr/local

GIT_VERSION := $(shell git describe --dirty || echo 0.0.0)

CFLAGS+=-Wall
CFLAGS+=-DGIT_VERSION='"$(GIT_VERSION)"'

all: pkgtut

pkgtut: pkgtut.c
	$(CC) $(CFLAGS) -o $@ $^

install: all
	install -Dm755 pkgtut $(DESTDIR)$(prefix)/bin/pkgtut

clean:
	@rm -f pkgtut

.PHONY: all install clean
