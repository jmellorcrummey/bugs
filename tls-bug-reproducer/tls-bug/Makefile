PKGS=run

run:
	./tls-bug.sh

inspect:
	gdb ../laghos/Laghos/cuda/laghos *.core

clean:
	/bin/rm -rf hpctoolkit-* *.core


.PHONY: $(PKGS) clean
