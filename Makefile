doc/tiscreen-doc.pdf: doc/tiscreen-doc.tex
	pdflatex -output-directory $(@D) $<

tiscreen.tar.gz: doc/tiscreen-doc.pdf
	find ../tiscreen -regex '.*\.\(pdf\|tex\|sty\)' -o -name 'README' | tar -czvf $@ -T -
