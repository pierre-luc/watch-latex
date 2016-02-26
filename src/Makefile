CC=xelatex
SRC=tex
DST=../pdf
DOC=exemple

all: $(DOC).pdf

$(DOC).pdf: $(SRC)/$(DOC).tex
	$(CC) $<
	$(CC) $<
	mv $(DOC).pdf $(DST)

clean:
	rm -f $(DOC).aux $(DOC).toc $(DOC).log
