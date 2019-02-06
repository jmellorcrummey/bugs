source ../env/sourceme.sh

# mfem
git clone https://github.com/mfem/mfem.git
pushd mfem
git checkout laghos-v2.0
make config MFEM_USE_MPI=YES HYPRE_DIR=`pwd`/../hypre-2.11.2/src/hypre MFEM_USE_METIS_5=YES METIS_DIR=`pwd`/../metis-5.1.0
make status
make -j16
popd
