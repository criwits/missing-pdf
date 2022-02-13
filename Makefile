MISSING = missing
PDF     = $(MISSING).pdf
REQUIRE = $(MISSING).tex $(MISSING).sty
TEMP    = missing.aux chapters/*.aux missing.log missing.out missing.toc missing.xdv missing.synctex.gz

LATEX   = xelatex
OPTIONS = -interaction=nonstopmode -synctex=1 -output-driver="xdvipdfmx -i dvipdfmx-unsafe.cfg -q -E" --shell-escape
NOPDF   = --no-pdf

all: $(PDF)

$(PDF): $(REQUIRE) FORCE
	$(LATEX) $(NOPDF) $(MISSING).tex
	$(LATEX) $(OPTIONS) $(NOPDF) $(MISSING).tex
	$(LATEX) $(OPTIONS) $(MISSING).tex

once: $(REQUIRE) FORCE
	$(LATEX) $(OPTIONS) $(MISSING).tex

clean: FORCE
	rm -r $(TEMP)

FORCE:
.PHONY: all once clean FORCE