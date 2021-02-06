# Introduction

The repo described how to use MRAA to control the peripheral of Neuron PI on Ubuntu 18.04.

The pin define of Neuron PI: https://github.com/eclipse/mraa/blob/master/docs/adlink_ipi_x86.md

# Build & Install

* Install necessary packages.

```bash
sudo apt install git build-essential swig3.0 python-dev nodejs-dev cmake libjson-c-dev
```

* Build

```bash
git clone https://github.com/eclipse/mraa.git
cd mraa
cmake -Bbuild -H. -DCMAKE_BUILD_TYPE=Release
cmake --build build
```

* Install

```bash
cmake --build build --target install
```

# Usage

* Every time booting the Neuron PI, you need to run the following commands.

```bash
sudo modprobe i2c_i801
sudo modprobe gpio-pca953x
echo "pca9535 0x20" > /sys/bus/i2c/devices/i2c-13/new_device
echo "sx1509q 0x3e" > /sys/bus/i2c/devices/i2c-1/new_device
```

* You can refer to the MRAA API to develop your program.
  - C/C++: http://iotdk.intel.com/docs/master/mraa/
  - Python: http://iotdk.intel.com/docs/master/mraa/python/
