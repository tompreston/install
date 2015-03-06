#!/bin/bash
#: Description: Install Wiring Pi.

printf "Updating system repositories.\n"
sudo apt-get update

printf "Upgrading system.\n"
sudo apt-get install -y git-core
sudo apt-get upgrade

printf "Cloning WiringPi\n"
git clone git://git.drogon.net/wiringPi

printf "Installing WiringPi\n"
cd wiringPi
./build
