#!/usr/bin/env bash

if lsmod | grep -q i2c_i801 && lsmod | grep -q gpio_pca953x ; then
    # Module is loaded
else
    sudo modprobe i2c_i801
    sudo modprobe gpio-pca953x
    echo "pca9535 0x20" > /sys/bus/i2c/devices/i2c-13/new_device
    echo "sx1509q 0x3e" > /sys/bus/i2c/devices/i2c-6/new_device
fi
export LD_LIBRARY_PATH=/usr/local/lib
