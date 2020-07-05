resume.pdf: resume.tex resume.cls
	pdflatex resume.tex --jobname="Yash_Lala_resume" resume.tex >/dev/null

.PHONY = clean

clean: 
	rm resume.pdf resume.log
