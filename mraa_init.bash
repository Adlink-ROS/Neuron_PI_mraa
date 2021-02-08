#!/usr/bin/env bash

if lsmod | grep -q i2c_i801 && lsmod | grep -q gpio_pca953x ; then
    echo "Module is loaded."
else
    echo "Loading the modules..."
    sudo modprobe i2c_i801
    sudo modprobe gpio-pca953x
    # i2c-13: SMBus I801 adapter at f040
    sudo sh -c 'echo "pca9535 0x20" > /sys/bus/i2c/devices/i2c-13/new_device'
    # i2c-6: Synopsys DesignWare I2C adapter
    sudo sh -c 'echo "sx1509q 0x3e" > /sys/bus/i2c/devices/i2c-6/new_device'
fi
