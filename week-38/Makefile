.PHONY: all

all: helloworld

%.o: %.ll
	llc -filetype=obj $< -o $@

%: %.o
	clang $< -o $@
