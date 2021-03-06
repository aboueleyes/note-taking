# This MakeFile is to generate PDFs from Markdowm 

# Directory containing Markdowm files 
source := src 

# Directory containing Markdowm files 
output := out 

# markdown in src/ are considered source
sources := $(wildcard $(source)/*.md)

# Convert the list of source files (Markdown files in directory src/)
# into a list of output files (PDFs in directory out/).

objects := $(patsubst %.md,%.pdf,$(subst $(source),$(output),$(sources)))

all: $(objects)

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
		-f markdown  $< \
		--pdf-engine=xelatex \
		-o $@

.PHONY : clean

clean:
	rm -f $(output)/*.pdf
