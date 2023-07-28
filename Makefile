.DEFAULT = resume.pdf

resume.pdf: resume.tex resume.cls
	latexmk resume.tex -quiet -silent -pdf

.PHONY = export
export: resume.pdf
	cp resume.pdf ~/io/yash-lala-resume.pdf
	cp resume.pdf ~/code/yashlala.com/static/yash-lala-resume.pdf

.PHONY = clean
clean: 
	latexmk resume.tex -quiet -silent -c
	rm resume.pdf
