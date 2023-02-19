# SPDX-License-Identifier: MIT
#
# Makefile -- root Makefile (invokes other Makefiles in subdirs under src/)
#
# Copyright (C) 2023 Indraj Gandham <indraj@gandham.ru>


# options
LD := gcc
OUT := helloworld

# recipes
.PHONY: all
all: link

link: build
	mkdir -p out
	$(LD) $(shell find . -type f -name "*.o") -o out/$(OUT) $(LDFLAGS)

build:
	$(MAKE) -C src/helloworld

.PHONY: clean
clean:
	rm -rf out
	rm -rf $(shell find . -type f -name "*.o")
