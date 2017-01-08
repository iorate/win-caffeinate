
# nonsugar
#
# Copyright iorate 2016.
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE_1_0.txt or copy at
# http://www.boost.org/LICENSE_1_0.txt)

CXX := g++
CXXFLAGS := -O2 -std=c++14 -Wall -Wextra -Wno-missing-field-initializers --pedantic-errors -I nonsugar
PROGRAM := caffeinate.exe
DESTDIR := ~/.local/bin

all: $(PROGRAM)

$(PROGRAM): main.cpp
	$(CXX) $(CXXFLAGS) -o $@ $^

install: $(PROGRAM)
	install -s $(PROGRAM) $(DESTDIR)

clean:
	rm -f $(PROGRAM)
