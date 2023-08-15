.PHONY: clean open pdf html all

source_files = $(wildcard *.md)
pdf_file = output.pdf
html_file = output.html

pdf: $(pdf_file)

html: $(html_file)

all: pdf html

$(pdf_file): $(source_files)
	pandoc -s --pdf-engine=xelatex -V subparagraph $(source_files) -o $(pdf_file)

$(html_file): $(source_files)
	pandoc -s $(source_files) -o $(html_file)

clean:
	rm -f $(pdf_file) $(html_file)

open: $(pdf_file)
	open $(pdf_file)
