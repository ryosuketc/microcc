CFLAGS=-std=c11 -g -static

microcc: microcc.c

test: microcc
		./test.sh

clean:
		rm -f microcc *.o *~ tmp*

.PHONY: test clean
