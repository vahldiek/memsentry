SUBDIRS = passes static test

all: clang-3.8
	@for dir in $(SUBDIRS); do \
		make -C $$dir; \
	done

clang-3.8: clang+llvm-3.8.0-x86_64-linux-gnu-debian8.tar.xz 
	mkdir clang-3.8
	tar xf clang+llvm-3.8.0-x86_64-linux-gnu-debian8.tar.xz -C clang-3.8 --strip-components=1
	rm *.tar.xz

clang+llvm-3.8.0-x86_64-linux-gnu-debian8.tar.xz:
	wget https://releases.llvm.org/3.8.0/clang+llvm-3.8.0-x86_64-linux-gnu-debian8.tar.xz	

clean:
	@for dir in $(SUBDIRS); do \
		make -C $$dir clean; \
	done

.PHONY: all clean
