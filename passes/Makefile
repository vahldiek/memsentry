include ../config.mk

CXX     := $(CLANG++)
CFLAGS  := -Wall -g `$(LLVMCONF) --cxxflags` -O0 \
		   -I../include -ggdb
LDFLAGS := -g -shared `$(LLVMCONF) --ldflags`
OBJDIR  ?= ./obj

OBJS := MemSentry BenchDomain BenchDomainPost
OBJS := $(patsubst %,$(OBJDIR)/%.o,$(OBJS))

LIB      := libmemsentry-pass.so

.PHONY: all clean

all: $(OBJDIR)/$(LIB)

$(OBJDIR)/$(LIB): $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $^

$(OBJDIR)/%.o: %.cpp | $(OBJDIR)
	$(CXX) -c $(CFLAGS) -o $@ $<

$(OBJDIR):
	mkdir -p $@

clean:
	rm -rf $(OBJDIR)
