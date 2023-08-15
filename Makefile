.PHONY: clean open pdf html all

metadata_file = metadata.yaml.md
source_files = $(wildcard pages/*.md)
pdf_file = output.pdf
html_file = output.html

pdf: $(pdf_file)

html: $(html_file)

all: pdf html

$(pdf_file): $(metadata_file) $(source_files)
	pandoc -s --pdf-engine=xelatex -V subparagraph $(metadata_file) $(source_files) -o $(pdf_file)

$(html_file): $(metadata_file) $(source_files)
	pandoc -s --toc --lua-filter=lua/anchor-links.lua $(metadata_file) $(source_files) -o $(html_file)

clean:
	rm -f $(pdf_file) $(html_file)

open: $(pdf_file)
	open $(pdf_file)
