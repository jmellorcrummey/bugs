source ../env/sourceme.sh

git clone https://github.com/CEED/Laghos.git

# CUDA Laghos
pushd Laghos/cuda
make NV_ARCH=-arch=sm_70 CUDA_DIR=$CUDA_HOME MPI_HOME=$MPI_ROOT -j8
popd
