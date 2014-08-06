## Encoding: ISO8859-1 ##

MASTER = gems-latex-beamer-template-sose14
ZIPNAME = gems-latex-beamer-template-sose14.zip
.PHONY: clean

pdf: *.tex *.bib
	pandoc TITLE.md -t beamer --slide-level 2 -o TITLE.tex
	lualatex $(MASTER).tex
	bibtex $(MASTER)
	lualatex $(MASTER).tex
	lualatex $(MASTER).tex

clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.nav
	rm -f *.out
	rm -f *.snm
	rm -f *.toc
	rm -f *.bbl
	rm -f *.blg
	rm -f *.zip
	rm -f *~

zip: clean
	zip $(ZIPNAME) *
	zip $(ZIPNAME) logos/*
	zip $(ZIPNAME) images/*

bundle: pdf clean zip

