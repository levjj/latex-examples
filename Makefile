ALL=p01-mini/doc.pdf\
    p02-text/doc.pdf\
    p03-formatting/doc.pdf\
    p04-fancy/doc.pdf\
    p05-toc/doc.pdf\
    p06-renewsection/doc.pdf\
    p07-figures/doc.pdf\
    p08-footnotes/doc.pdf\
    p09-lists/doc.pdf\
    p10-tables/doc.pdf\
    p11-math/doc.pdf\
    p12-citations/doc.pdf\
    p13-tikz/doc.pdf\
    p14-letters/doc.pdf\
    p15-multifiles/doc.pdf\
    p16-presentation/doc.pdf

default : clean all

all: $(ALL)

%.pdf: %.tex
	cd $(@D) ; pdflatex $(+F)
	cd $(@D) ; bibtex $(+F) && pdflatex $(+F) || true
	cd $(@D) ; pdflatex $(+F)

clean:
	git clean -d -f -X
