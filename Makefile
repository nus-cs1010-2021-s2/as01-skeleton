.SILENT: test
CC=clang
LDLIBS=-lm -lcs1010
INCLUDEDIR=~cs1010/include

CFLAGS=-g @.warnings -I $(INCLUDEDIR) -L $(LIBDIR)
LIBDIR=~cs1010/lib

all: test

test: box digits suffix taxi
	./test.sh box 
	./test.sh digits
	./test.sh suffix
	./test.sh taxi

clean:
	rm box digits suffix taxi
# vim:noexpandtab
