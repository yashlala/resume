resume.pdf: resume.tex resume.cls
	@pdflatex resume.tex 

.PHONY = clean

clean: 
	rm resume.pdf resume.log
