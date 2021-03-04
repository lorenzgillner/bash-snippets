DEST = /mnt/e/bin
TARG = bin

all:
	$(info Did you mean 'install'?)

install:
	cp $(TARG)/* $(DEST)/
