DEST = /mnt/e/bin/
TARG = ash deen ende ghs thesa

all:
	$(info Did you mean 'install'?)

install: $(TARG)
	cp $(TARG) $(DEST)
