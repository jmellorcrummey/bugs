source ../env/sourceme.sh
mpirun -np 1 hpcrun -e nvidia-cuda ../laghos/Laghos/cuda/laghos -p 0 -m ../laghos/Laghos/data/square01_quad.mesh -rs 3 -tf 0.75 -pa
