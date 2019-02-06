PKGS= tar hypre-2.11.2 metis-5.1.0 mfem Laghos

build: $(PKGS)

mfem:
	./build-mfem.sh

hypre-2.11.2:
	./build-hypre.sh

metis-5.1.0:
	./build-metis.sh

Laghos:
	./build-laghos.sh

tar:
	-mkdir tar

clean:
	/bin/rm -rf $(PKGS) tar

.PHONY: $(PKGS)
