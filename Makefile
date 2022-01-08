THESIS = thesis
SLIDES = presentation
AUX_FILES = **/*.acn **/*.acr **/*.alg **/*.aux **/*.bbl **/*.bcf **/*.blg **/*.dvi **/*.fdb_latexmk **/*.fls **/*.glg **/*.glo **/*.gls **/*.ist **/*.lof **/*.log **/*.out **/*.pdf **/*.run **/*.synctex **/*.toc

thesis: glossaries
	latexmk -pdflatex=lualatex -pdf $(THESIS)

slides:
	latexmk -pdflatex=lualatex -pdf $(SLIDES)

glossaries:
	latexmk -pdflatex=lualatex -pdf $(THESIS)
	makeglossaries $(THESIS)

clean:
	rm -f $(AUX_FILES)
