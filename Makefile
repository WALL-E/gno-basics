EXAMPLES ?= $(dir $(wildcard [0-9][0-9][0-9]-*/pkgpath.txt))

all: precompile build test publish integration

deps:
	go mod tidy
	go install github.com/gnolang/gno/cmd/gnokey
	go install github.com/gnolang/gno/cmd/gnodev

precompile build test publish integration: deps
	@for example in $(EXAMPLES); do \
		( set -e; \
			echo "+ cd $$example && make $@"; \
			cd "$$example" && make --no-print-directory $@ \
		); \
	done
