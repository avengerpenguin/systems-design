.DEFAULT_GOAL := pdf

LATEX	= pdflatex -shell-escape
BIBTEX	= bibtex
MAKEINDEX = makeindex

RERUN = "(There were undefined references|Rerun to get (cross-references|the bars) right)"
RERUNBIB = "No file.*\.bbl|Citation.*undefined"
MAKEIDX = "^[^%]*\\makeindex"

COPY = if test -r $(<:%.tex=%.toc); then cp $(<:%.tex=%.toc) $(<:%.tex=%.toc.bak); fi
RM = rm -f

SRC	:= $(shell egrep -l '^[^%]*\\begin\{document\}' *.tex)
PDF	= $(SRC:%.tex=%.pdf)

define run-latex
	$(COPY);$(LATEX) $<
	egrep $(MAKEIDX) $< && ($(MAKEINDEX) $(<:%.tex=%);$(COPY);$(LATEX) $<) >/dev/null; true
	egrep -c $(RERUNBIB) $(<:%.tex=%.log) && ($(BIBTEX) $(<:%.tex=%);$(COPY);$(LATEX) $<) ; true
	egrep $(RERUN) $(<:%.tex=%.log) && ($(COPY);$(LATEX) $<) >/dev/null; true
	egrep $(RERUN) $(<:%.tex=%.log) && ($(COPY);$(LATEX) $<) >/dev/null; true
	if cmp -s $(<:%.tex=%.toc) $(<:%.tex=%.toc.bak); then true ;else $(LATEX) $< ; fi
	$(RM) $(<:%.tex=%.toc.bak)
	# Display relevant warnings
	egrep -i "(Reference|Citation).*undefined" $(<:%.tex=%.log) ; true
endef

clean:
	-rm -f use_case.png plant_*.png $(PDF) $(PDF:%.pdf=%.aux) $(PDF:%.pdf=%.bbl) $(PDF:%.pdf=%.blg) $(PDF:%.pdf=%.log) $(PDF:%.pdf=%.out) $(PDF:%.pdf=%.idx) $(PDF:%.pdf=%.ilg) $(PDF:%.pdf=%.ind) $(PDF:%.pdf=%.toc) $(PDF:%.pdf=%.d)

all: pdf

pdf: use_case.png plants
	pdflatex paper.tex
	bibtex paper.aux
	pdflatex paper.tex
	pdflatex paper.tex

talk: talk.pdf
talk.pdf: use_case.png plants

academy: academy-talk.pdf
academy-talk.pdf: use_case.png plants


proposal:
	pdflatex proposal.tex

use_case.png: use_case.dot
	dot -Tpng use_case.dot > use_case.png

plants:
	plantuml paper.tex

$(PDF) : %.pdf : %.tex
	@$(run-latex)
