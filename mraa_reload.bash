#!/usr/bin/env bash

# unload driver
sudo sh -c 'echo "0x3e" > /sys/bus/i2c/devices/i2c-6/delete_device'
sudo sh -c 'echo "0x20" > /sys/bus/i2c/devices/i2c-13/delete_device'
sudo modprobe -r i2c_i801
sudo modprobe -r gpio-pca953x
# load driver
sudo modprobe i2c_i801
sudo modprobe gpio-pca953x
sudo sh -c 'echo "pca9535 0x20" > /sys/bus/i2c/devices/i2c-13/new_device'
sudo sh -c 'echo "sx1509q 0x3e" > /sys/bus/i2c/devices/i2c-6/new_device'
