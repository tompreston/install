#!/bin/bash
#: Description: Install Wiring Pi.

printf "Updating system repositories.\n"
sudo apt-get update

printf "Installing pip.\n"
sudo apt-get install -y python-dev python-pip

printf "Installing WiringPi2\n"
sudo pip install wiringpi2

