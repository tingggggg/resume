# Local build. Requires XeLaTeX (e.g. `sudo apt install texlive-xetex texlive-fonts-extra latexmk`)
.PHONY: all clean
all: resume.pdf

resume.pdf: resume.tex awesome-cv.cls $(wildcard resume/*.tex)
	latexmk -xelatex -interaction=nonstopmode -halt-on-error resume.tex

clean:
	latexmk -C resume.tex
