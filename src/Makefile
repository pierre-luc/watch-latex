CC=xelatex -shell-escape
SRC=tex
DST=../pdf
DOC=exemple

all: $(DOC).pdf

$(DOC).pdf: $(SRC)/$(DOC).tex
	$(CC) $<
	$(CC) $<
	mv $(DOC).pdf $(DST)

clean:
	rm -rf $(DOC).aux $(DOC).toc $(DOC).log _minted-*
