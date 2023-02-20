# SPDX-License-Identifier: MIT
#
# Makefile -- helloworld module Makefile
#
# Copyright (C) 2023 Indraj Gandham <indraj@gandham.ru>


# presets
DEBUG := -O0 -g3 -fno-omit-frame-pointer
STANDARD := -O2 -fvisibility=hidden

# options
CC := cc
CFLAGS := -Werror -Wextra -std=c99 -pedantic-errors -c $(DEBUG)

# recipes
.PHONY: all
all: helloworld.o

helloworld.o: helloworld.c
	$(CC) $(CFLAGS) helloworld.c

.PHONY: clean
clean:
	rm -rf $(shell find . -type f -name "*.o")
