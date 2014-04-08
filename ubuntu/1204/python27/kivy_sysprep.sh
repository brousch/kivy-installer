#!/bin/sh
# Install necessary system packages
sudo apt-get install -y build-essential mercurial git python2.7 python-dev ffmpeg libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsmpeg-dev libsdl1.2-dev libportmidi-dev libswscale-dev libavformat-dev libavcodec-dev zlib1g-dev unzip

# Bootstrap a current Python environment
sudo apt-get remove --purge -y python-virtualenv python-pip python-setuptools
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | sudo python2.7
rm setuptools*.zip
sudo easy_install-2.7 -U pip
sudo pip2.7 install -U virtualenv

# Install current version of Cython
sudo apt-get remove --purge -y cython
sudo pip2.7 install -U cython

# Install other PyGame dependencies
sudo apt-get remove --purge -y python-numpy
sudo pip2.7 install -U numpy

# Install PyGame
hg clone https://bitbucket.org/pygame/pygame
cd pygame
python2.7 setup.py build
sudo python2.7 setup.py install
cd ..
sudo rm -rf pygame

