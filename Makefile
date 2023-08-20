.PHONY: clean open pdf html all help

metadata_files = metadata.yaml.md layout.yaml.md
source_files = $(wildcard pages/*.md)
pdf_file = kartana.pdf
html_file = kartana.html

pdf: ## Generates output.pdf
pdf: $(pdf_file)

html: ## Generates output.html
html: $(html_file)

all: pdf html ## Generates both HTML and PDF

$(pdf_file): $(metadata_files) $(source_files)
	pandoc -s \
		--resource-path=.:pages:assets \
		--pdf-engine=xelatex \
		--embed-resources \
		$(metadata_files) $(source_files) \
		-o $(pdf_file)

$(html_file): $(metadata_files) $(source_files)
	pandoc -s \
		--resource-path=.:pages:assets \
		--embed-resources=true \
		--css=path/to/custom.css \
		--toc \
		--lua-filter=lua/anchor-links.lua \
		$(metadata_files) $(source_files) \
		-o $(html_file)

clean: ## Deletes generated HTML and PDF files
	rm -f $(pdf_file) $(html_file)

open: ## opens the PDF with your default viewer using the `open` command
open: $(pdf_file)
	open $(pdf_file)

help: ## Shows this help.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done

