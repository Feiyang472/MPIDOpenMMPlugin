cd build
rm -rf *
conda activate mpid

export OPENMM_INSTALL_DIR=/home/feiyang/miniconda3/envs/mpid

CXX=g++ cmake .. -DCMAKE_INSTALL_PREFIX=$OPENMM_INSTALL_DIR -DPYTHON_EXECUTABLE='/home/feiyang/miniconda3/envs/mpid/bin/python' -DOPENMM_DIR=$OPENMM_INSTALL_DIR -DCMAKE_CXX_FLAGS='-std=c++11'

make -j 4
make test
make install
make PythonInstall
