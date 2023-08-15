.PHONY: clean open

source_files = $(wildcard *.md)
pdf_file = output.pdf

$(pdf_file): $(source_files)
	pandoc -s --pdf-engine=xelatex -V subparagraph $(source_files) -o $(pdf_file)

clean:
	rm $(pdf_file)

open: $(pdf_file)
	open $(pdf_file)
