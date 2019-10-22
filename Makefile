prefix := /usr/local

GIT_VERSION := $(shell git describe --dirty || echo 0.0.0)

all: pkgtut

pkgtut: pkgtut.c
	gcc -Wall -DGIT_VERSION='"$(GIT_VERSION)"' -o $@ $^

install: all
	install -Dm755 pkgtut $(DESTDIR)$(prefix)/bin/pkgtut

clean:
	@rm -f pkgtut

.PHONY: all install clean
