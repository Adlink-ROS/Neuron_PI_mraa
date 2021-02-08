# Introduction

The repo described how to use MRAA to control the peripheral of Neuron PI on Ubuntu 18.04.

The pin define of Neuron PI: https://github.com/eclipse/mraa/blob/master/docs/adlink_ipi_x86.md

# Install

```bash
cd ~
git clone https://github.com/Adlink-ROS/Neuron_PI_mraa.git
cd Neuron_PI_mraa
./mraa_install.bash
```

# Uninstall

```bash
sudo apt remove neuron-pi-mraa
rm -rf ~/Neuron_PI_mraa
```

# Usage

* Everytime open the terminal, please run the init script

```bash
source ~/Neuron_PI_mraa/mraa_init.bash
```

* Python Example (TODO)

* You can refer to the MRAA API to develop your program.
  - C/C++: http://iotdk.intel.com/docs/master/mraa/
  - Python: http://iotdk.intel.com/docs/master/mraa/python/
