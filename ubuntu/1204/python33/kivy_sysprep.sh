#!/bin/sh
# Bootstrap Python3.3
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update

# Install necessary system packages
sudo apt-get install -y build-essential mercurial git python3.3 python3.3-dev ffmpeg libfreetype6-dev libjpeg-dev libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsmpeg-dev libsdl1.2-dev libportmidi-dev libswscale-dev libavformat-dev libavcodec-dev zlib1g-dev unzip

# Bootstrap a current Python environment
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | sudo python3.3
rm setuptools*.zip
sudo easy_install-3.3 -U pip
sudo pip3.3 install -U virtualenv

# Install current version of Cython
sudo apt-get remove --purge -y cython
sudo pip3.3 install -U cython

# Install other PyGame dependencies
sudo apt-get remove --purge -y python-numpy
sudo pip3.3 install -U numpy

# Install PyGame
hg clone https://bitbucket.org/pygame/pygame
cd pygame
python3.3 setup.py build
sudo python3.3 setup.py install
cd ..
sudo rm -rf pygame

