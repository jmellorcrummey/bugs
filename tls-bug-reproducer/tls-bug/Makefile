PKGS=run

run:
	./tls-bug.sh

inspect:
	gdb ../laghos/Laghos/cuda/laghos *.core

debug:
	./tls-bug.sh 1

clean:
	/bin/rm -rf hpctoolkit-* *.core


.PHONY: $(PKGS) clean
