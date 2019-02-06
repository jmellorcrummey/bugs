source ../env/sourceme.sh

# get hypre
mkdir tar
pushd tar
wget https://computation.llnl.gov/projects/hypre-scalable-linear-solvers-multigrid-methods/download/hypre-2.11.2.tar.gz
popd

# unpack hypre
tar xzvf tar/hypre-2.11.2.tar.gz

# build hypre
pushd hypre-2.11.2/src
./configure --disable-fortran --with-MPI --with-MPI-include=$MPI_ROOT/include --with-MPI-lib-dirs=$MPI_ROOT/lib
make -j16
popd
