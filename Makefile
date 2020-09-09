.DEFAULT = resume.pdf

resume.pdf: resume.tex resume.cls
	latexmk resume.tex -quiet -silent -pdf
	latexmk resume.tex -quiet -silent -c


.PHONY = export
export: resume.pdf
	cp resume.pdf ~/io/resume.pdf

.PHONY = clean
clean: 
	rm resume.pdf
