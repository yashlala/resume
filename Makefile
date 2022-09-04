.DEFAULT = resume.pdf

resume.pdf: resume.tex resume.cls
	latexmk resume.tex -quiet -silent -pdf

.PHONY = deploy
deploy: resume.pdf
	cp resume ~/code/yashlala.com/static/yash-lala-resume.pdf
	~/code/yashlala.com/deploy.sh

.PHONY = export
export: resume.pdf
	cp resume.pdf ~/io/yash-lala-resume.pdf

.PHONY = clean
clean: 
	latexmk resume.tex -quiet -silent -c
	rm resume.pdf
