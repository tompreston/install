#!/bin/bash
#: Description: Install Wiring Pi Python.

printf "Updating system repositories.\n"
sudo apt-get update

printf "Upgrading system.\n"
sudo apt-get install -y git-core
sudo apt-get upgrade

printf "Cloning WiringPi-Python.\n"
git clone https://github.com/WiringPi/WiringPi-Python.git
cd WiringPi-Python
git submodule update --init
sudo cp WiringPi/wiringPi/*.h /usr/include/
sudo python setup.py install
cd -
