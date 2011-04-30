.DEFAULT:
	  @echo "This target needs remaking: default = [$<]"
	  @echo "Do you really use GNU-Make?"

MAINFILE       := Open-Advice
TEXSOURCES     := $(wildcard *.tex)
BBLFILES       := $(subst bib,bbl,$(BIBSRCFILES))
AUXFILES       := $(subst tex,aux,$(TEXSOURCES))
SCRIPTDIR      := scripts

SOURCES = $(TEXSOURCES) $(BIBSRCFILES)\
	  Makefile\
	  README

DISTFILES = $(SOURCES) $(SCRIPTDIR) logos images

$(MAINFILE).pdf: $(MAINFILE).tex $(TEXSOURCES) $(BBLFILES)
	- pdflatex $(MAINFILE)

clean:
	- find . | egrep ".*((\.(acn|acr|alg|aux|backup|bib.bak|out.ps|glg|glo|gls|idx|ind|ilg|ist|log|blg|bbl|toc|lof|lol|lot|dvi|tdo|tlf|tlt|tpt|url|xmpi))|~)$$" | xargs rm
	- rm -f $(MAINFILE).out thumb???.png thumbdta.tex thumbpdf.*

.PHONY: clean
#end of Makefile
