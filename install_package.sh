#!/bin/bash
#
#
<<info

this script willl install the packeage 

info

echo "installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null

echo "Installation Completed"


