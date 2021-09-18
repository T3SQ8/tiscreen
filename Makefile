doc/tiscreen-doc.pdf: doc/tiscreen-doc.tex
	latexmk -cd -pdf $<

tiscreen.tar.gz: doc/tiscreen-doc.pdf tex/tiscreen.sty
	find ../tiscreen -regex '.*\.\(pdf\|tex\|sty\)' -o -name 'README' | tar -czvf $@ -T -
