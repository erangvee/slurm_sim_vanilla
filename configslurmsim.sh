#!/bin/bash

rm -rf bld_opt
mkdir bld_opt
cd bld_opt

../slurm_simulator/configure --prefix=/home/slurm/slurm_sim_vanilla/slurm_opt --enable-simulator \
--enable-pam --without-munge --enable-front-end --with-mysql-config=/usr/bin/ --disable-debug \
CFLAGS="-g -O3 -D NDEBUG=1"

make -j install

cd ..
