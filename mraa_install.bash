#!/usr/bin/env bash

# Install dependencies
sudo apt install -y git build-essential swig3.0 python-dev nodejs-dev cmake libjson-c-dev checkinstall
# Build the code
git clone https://github.com/eclipse/mraa.git
cd mraa
cmake -Bbuild -H. -DCMAKE_BUILD_TYPE=Release -DBUILDSWIGNODE=OFF
cmake --build build
# Install
cd build
sudo checkinstall -y --pkgname=neuron-pi-mraa --pkgversion=1.0.0
