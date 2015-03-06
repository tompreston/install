#!/bin/bash
#: Description: Install PiGPIO.

printf "Updating.\n"
sudo apt-get update
sudo apt-get upgrade

printf "Installing PiFace Digital libs for permissions.\n"
# this is a bit hacky
sudo apt-get install python3-pifacedigitalio

printf "Downloading PiGPIO.\n"
curl -k https://raw.githubusercontent.com/piface/pigpio/master/pigpio.py > pigpio.py
