all: pkgtut

pkgtut: pkgtut.c
	gcc -Wall -o $@ $^

clean:
	@rm -f pkgtut

.PHONY: all clean
