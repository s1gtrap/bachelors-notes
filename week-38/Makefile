.PHONY: all

all: helloworld collatz

%.o: %.ll
	llc -filetype=obj $< -o $@

%: %.o
	clang $< -o $@
