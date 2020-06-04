resume.pdf: resume.tex resume.cls
	pdflatex resume.tex >/dev/null

.PHONY = clean

clean: 
	rm resume.pdf resume.log
