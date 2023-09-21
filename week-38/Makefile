TARGETS=helloworld printf calc calc2 collatz-mut collatz-phi

.PHONY: all clean

all: $(TARGETS)

clean:
	rm -rf $(TARGETS)

%.o: %.ll
	llc -filetype=obj $< -o $@

%: %.o
	clang $< -o $@
