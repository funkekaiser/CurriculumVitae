# Makefile for building the CV with latexmk.
# Override the engine with: make ENGINE=xelatex
ENGINE ?= pdf

LATEXMK      := latexmk
LATEXMKFLAGS := -$(ENGINE) -interaction=nonstopmode -halt-on-error

.PHONY: all clean distclean watch

all: Jonathan-Funke-Kaiser-CV.pdf

Jonathan-Funke-Kaiser-CV.pdf: Jonathan-Funke-Kaiser-CV.tex
	$(LATEXMK) $(LATEXMKFLAGS) Jonathan-Funke-Kaiser-CV.tex

watch: Jonathan-Funke-Kaiser-CV.tex
	$(LATEXMK) -pvc $(LATEXMKFLAGS) Jonathan-Funke-Kaiser-CV.tex

clean:
	$(LATEXMK) -c

distclean:
	$(LATEXMK) -C
	rm -f Jonathan-Funke-Kaiser-CV.pdf
