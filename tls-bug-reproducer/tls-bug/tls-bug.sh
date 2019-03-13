source ../env/sourceme.sh

which hpcrun 
printenv CUPTI_PERFWORKS_SAMPLER

if test -n "$1"; then
mpirun -np 1 hpcrun -d -e nvidia-cuda ../laghos/Laghos/cuda/laghos -p 0 -m ../laghos/Laghos/data/square01_quad.mesh -rs 3 -tf 0.75 -pa &
sleep 5
PID=`eval 'ps | grep laghos | cut -f 1'` 
gdb -p $PID
else
mpirun -np 1 hpcrun -e cycles -e nvidia-cuda ../laghos/Laghos/cuda/laghos -p 0 -m ../laghos/Laghos/data/square01_quad.mesh -rs 3 -tf 0.75 -pa
fi
