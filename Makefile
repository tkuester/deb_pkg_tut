GIT_VERSION := $(shell git describe --dirty || echo 0.0.0)

all: pkgtut

pkgtut: pkgtut.c
	gcc -Wall -DGIT_VERSION='"$(GIT_VERSION)"' -o $@ $^

clean:
	@rm -f pkgtut

.PHONY: all clean
