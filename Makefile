# Generate PDFs from the Markdown source files

# Directory containing source (Markdown) files
source := src

# Directory containing pdf files
output := out

ifeq ($(origin FILES), undefined)
# All markdown files in src/ are considered sources
sources := $(wildcard $(source)/*.md)
# Convert the list of source files (Markdown files in directory src/)
# into a list of output files (PDFs in directory out/).
objects := $(sources:$(source)/%.md=$(output)/%.pdf)
else
# build only the FILES list
COMMA      := ,
file_names := $(subst $(COMMA), ,$(FILES))
objects    := $(file_names:%=$(output)/%.pdf)
endif

.PHONY: clean

all: $(output) $(objects)

$(output):
	mkdir -p $(output)

# Recipe for converting a Markdown file into PDF using Pandoc
$(output)/%.pdf: $(source)/%.md
	pandoc \
		--variable mainfont="DejaVu Sans" \
		--variable monofont="DejaVu Sans Mono" \
		--variable fontsize=11pt \
		--variable geometry:"top=1.5cm, bottom=2.5cm, left=1.5cm, right=1.5cm" \
		--variable geometry:a4paper \
		--table-of-contents \
		--number-sections \
		-f markdown $< \
		--pdf-engine=xelatex \
		-o $@

clean:
	rm -f $(output)/*.pdf

