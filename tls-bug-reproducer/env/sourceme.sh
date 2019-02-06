export SPACK_ROOT=`pwd`/../hpctoolkit/spack
source $SPACK_ROOT/share/spack/setup-env.sh
HPCT=`eval "module keyword hpctoolkit 2>&1 | grep hpctoolkit-gpu | cut --delimiter=: -f 1"`
module load $HPCT
module load cuda
module load spectrum-mpi/rolling-release
