
Open-Advice:
	pdflatex Open-Advice

clean:
	rm -rf Open-Advice.pdf Open-Advice.log Open-Advice.toc Open-Advice.aux
	rm -rf Open-Advice.out Open-Advice.tdo Open-Advice.xmpi
	-find . -name "*.aux" | xargs rm
