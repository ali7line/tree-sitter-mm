SOURCE_FILES = ./grammar.js package.json example.mm
GENERATED_FILES = ./src/parser.c ./src/tree_sitter/parser.h


gen:
	./node_modules/tree-sitter-cli/tree-sitter generate

parse:
	./node_modules/tree-sitter-cli/tree-sitter parse ./examples/org.mm

test: $(GENERATED_FILES)
	npm test

.PHONY: all
