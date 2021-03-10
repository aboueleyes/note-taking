# Generate PDFs from the Markdown source files

# Directory containing source (Markdown) files
source := src

# Directory containing pdf files
output := out

# All markdown files in src/ are considered sources
sources := $(wildcard $(source)/*.md)

# Convert the list of source files (Markdown files in directory src/)
# into a list of output files (PDFs in directory out/).
objects = $(sources:$(source)/%.md=$(output)/%.pdf)

.PHONY: clean

all: $(output) $(objects)

$(output):
	mkdir -p $(output)

# Recipe for converting a Markdown file into PDF using Pandoc
$(output)/%.pdf: $(source)/%.md
	@# build and pass the basename only
	./build $(patsubst $(output)/%.pdf,%,$@)

clean:
	rm -f $(output)/*.pdf

