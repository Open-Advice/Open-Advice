default: pdf
all: pdf mobi epub

# 10-12" screen readers, tablets, etc
pdf: Open-Advice.pdf

# only really useful as a e-reader pre-stage
html: Open-Advice.html

# recommended for Amazon Kindle 7/8" screen readers
mobi: Open-Advice.mobi

# for everyone elses 7/8" screen readers
epub: Open-Advice.epub

AUTHORS = "Lydia Pintscher"
COVER 	= "frontcover.jpg"

####### Helpers #######

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

%.html:	%.tex
	htlatex $< "xhtml,fn-in"

%.epub:	%.html
	# requires calibre
	ebook-convert $< $(basename $<).epub \
		--cover $(COVER) \
		--authors $(AUTHORS) \
		--change-justification justify

%.mobi:	%.html
	# requires calibre
	ebook-convert $< $(basename $<).mobi \
		--cover $(COVER) \
		--authors $(AUTHORS) 

clean:
	-rm -rf Open-Advice.pdf Open-Advice.log Open-Advice.toc Open-Advice.aux
	-rm -rf Open-Advice.out Open-Advice.tdo Open-Advice.xmpi
	-rm -rf Open-Advice*.html Open-Advice.css Open-Advice.4* Open-Advice.idv
	-rm -rf Open-Advice.lg Open-Advice.dvi Open-Advice.tmp Open-Advice.toc Open-Advice.xref
	-rm -rf Open-Advice.epub Open-Advice.mobi
	-find . -name "*.aux" -and -not -path ./.git -prune | xargs rm -f
