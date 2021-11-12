THESIS = thesis
AUX_FILES = **/*.aux **/*.acn **/*.acr **/*.alg **/*.aux **/*.bbl **/*.blg **/*.fdb_latexmk **/*.fls **/*.glg **/*.glo **/*.gls **/*.ist **/*.lof **/*.log **/*.lot **/*.out **/*.toc **/*.synctex.gz

build: glossaries 
	latexmk -pdf $(THESIS)

glossaries: 
	latexmk -pdf $(THESIS)
	makeglossaries $(THESIS) 

clean:
	rm -f $(AUX_FILES)