# Caffe ported for Xeon Phi

caffe-dependencies
==================

General cross-compile with autotools:
* ./configure CC=icc CXX=icpc LD=icc CXXLD=icpc CFLAGS=-mmic CXXFLAGS=-mmic --build=x86_64-unknown-linux-gnu --host=x86_64-k1om-linux
----

Protobuf:
* 1. install on host:
* ./configure
* make -j8
* sudo make install
* 2. cross-compile for Xeon Phi:
* ./configure --enable-shared --prefix=/mnt/ssd/kivan/xeon_phi/protobuf-2.5.0/build/ --host=x86_64-unknown-linux-gnu "--with-protoc=${PROTOC}" CXXFLAGS=-mmic LDFLAGS=-mmic CC=icc CXX=icpc
----

Glog:
* ./configure --prefix=/mnt/ssd/kivan/xeon_phi/glog-0.3.3/build/ --host=x86_64-unknown-linux-gnu CXXFLAGS=-mmic LDFLAGS=-mmic CC=icc CXX=icpc
----

HDF5:
* ./configure CC=icc CXX=icpc FC=ifort CPP="icc -E" CXXCPP="icpc -E" CXXFLAGS=-mmic CFLAGS=-mmic FCFLAGS=-mmic --prefix=/mnt/ssd/kivan/xeon_phi/caffe/libs/hdf5/ --host=x86_64-unknown-linux-gnu
----

OpenCV:
* cmake -DWITH_CUDA=OFF -DWITH_OPENCL=OFF -DWITH_GTK=OFF -DWITH_1394=OFF -DWITH_TBB=ON -WITH_OPENMP=ON -DCMAKE_BUILD_TYPE=release -DCMAKE_INSTALL_PREFIX=/mnt/ssd/kivan/xeon_phi/libs/opencv/ -DCMAKE_TOOLCHAIN_FILE=../native_xeon_phi.cmake -DCMAKE_C_COMPILER=icc -DCMAKE_CXX_COMPILER=icpc -DCMAKE_C_FLAGS=-mmic -DCMAKE_CXX_FLAGS=-mmic ../
----

