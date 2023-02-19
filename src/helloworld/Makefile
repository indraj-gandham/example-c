# SPDX-License-Identifier: MIT
#
# Makefile -- Makefile for building the helloworld example module
#
# Copyright (C) 2023 Indraj Gandham <indraj@gandham.ru>


# presets
DEBUG := -O0 -ggdb -g3 -fno-omit-frame-pointer
STANDARD := -O2 -fvisibility=hidden

# options
CC := gcc
CFLAGS := -Werror -Wextra -c $(DEBUG)

# recipes
.PHONY: all
all: helloworld.o

helloworld.o: helloworld.c
	$(CC) $(CFLAGS) helloworld.c

.PHONY: clean
clean:
	rm -rf $(shell find . -type f -name "*.o")
