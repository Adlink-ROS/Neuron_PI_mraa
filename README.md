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

* Everytime booting the Neuron PI, please run the init script

```bash
source ~/Neuron_PI_mraa/mraa_init.bash
```

* The following commands are necessary every time opening a new terminal.

```bash
# We need root privilege to control the peripherals
sudo su
# Setup the library path
export LD_LIBRARY_PATH=/usr/local/lib
```

* Python3 Example (Running Python3 CLI)

```bash
import mraa
pin_40=mraa.Gpio(40)
pin_40.dir(mraa.DIR_OUT)
pin_40.write(1)
pin_40.write(0)
```

* You can refer to the MRAA API to develop your program.
  - C/C++: http://iotdk.intel.com/docs/master/mraa/
  - Python: http://iotdk.intel.com/docs/master/mraa/python/
