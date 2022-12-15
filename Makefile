# Makefile for compiling documentation in AsciiDoc to HTML

all: index.html

deprecated_files/wheat_pseudomolecule_tutorial_V1.adoc: deprecated_files/wheat_pseudomolecule_tutorial_V1.Rasciidoc
	Rscript --vanilla -e 'knitr::knit("$<", "$@")'

deprecated_files/wheat_pseudomolecule_tutorial_V1.html: deprecated_files/wheat_pseudomolecule_tutorial_V1.adoc
	asciidoctor $<

deprecated_files/genome_assembly_tutorial.html: deprecated_files/genome_assembly_tutorial.adoc
	asciidoctor $< 

index.html: index.adoc
	asciidoctor $< 
