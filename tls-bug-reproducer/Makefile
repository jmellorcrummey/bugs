PKGS= hpctoolkit laghos

build: $(PKGS)

hpctoolkit:
	make -C hpctoolkit 

laghos:
	make -C laghos

tls-bug:
	make -C tls-bug

distclean:
	make -C laghos clean
	make -C hpctoolkit clean
	make -C tls-bug clean
	
.PHONY: $(PKGS) tls-bug clean 
