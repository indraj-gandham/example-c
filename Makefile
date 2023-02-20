# SPDX-License-Identifier: MIT
#
# Makefile -- project root Makefile
#
# Copyright (C) 2023 Indraj Gandham <indraj@gandham.ru>


# options
LD := cc
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
