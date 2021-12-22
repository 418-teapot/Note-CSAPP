NOTEX   = notex
MYNAME  = csapp
PDF     = $(MYNAME).pdf
REQUIRE = $(NOTEX).cls
TEMP    = $(MYNAME).{aux,log,idx,ind,ilg,out,toc,los,synctex.gz}
MINTED_TEMP = _minted-$(MYNAME)

TEX     = latexmk -xelatex
MODE    = -shell-escape

all: $(PDF)

$(PDF): $(REQUIRE) FORCE_MAKE
	$(TEX) $(MODE) $(MYNAME)

clean:
	$(TEX) -C $(MYNAME)
	rm -r $(MINTED_TEMP)

.PHONY: all clean FORCE_MAKE
