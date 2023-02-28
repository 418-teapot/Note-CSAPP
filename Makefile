export MYNAME = csapp

all:
	$(MAKE) -C NoTex

clean:
	$(MAKE) -C NoTex clean

.PHONY: all
