#!/bin/sh

# Install necessary system packages
sudo apt-get install -y build-essential mercurial git python3.4 python3.4-dev libfreetype6-dev libjpeg-dev libav-tools libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsmpeg-dev libsdl1.2-dev libportmidi-dev libswscale-dev libavformat-dev libavcodec-dev libfreetype6-dev zlib1g-dev unzip

# Bootstrap a current Python environment
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | sudo python3.4
rm setuptools*.zip
sudo easy_install-3.4 -U pip

# Install current version of Cython
sudo apt-get remove --purge -y cython
sudo pip3.4 install cython==0.20.1

# Install other PyGame dependencies
sudo apt-get remove --purge -y python-numpy
sudo pip3.4 install -U numpy

# Install PyGame
hg clone https://bitbucket.org/pygame/pygame
cd pygame
python3.4 setup.py build
sudo python3.4 setup.py install
cd ..
sudo rm -rf pygame

# Install stable version of Kivy
sudo pip3.4 install -U kivy

# Install development version of plyer
sudo pip3.4 install git+https://github.com/kivy/plyer.git@master

# Install a couple of dependencies for KivyCatalog
sudo pip3.4 install -U pygments docutils

