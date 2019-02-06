source ../env/sourceme.sh
# metis
pushd tar
wget http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/metis-5.1.0.tar.gz
popd

tar xzvf tar/metis-5.1.0.tar.gz

pushd metis-5.1.0
make config prefix=`pwd`
make -j16 
make install
popd
