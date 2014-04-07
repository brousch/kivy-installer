#!/bin/sh

# Bootstrap Python3.3
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update

# Install necessary system packages
sudo apt-get install -y build-essential git zlib1g-dev python3.3 python3.3-dev

# Bootstrap a current Python environment
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | sudo python3.3
rm setuptools*.zip
sudo easy_install-3.3 -U pip
sudo pip3.3 install -U virtualenv

# Install current version of Cython
sudo apt-get remove --purge -y cython
sudo pip3.3 install -U cython

# Install Buildozer from master (not yet available for > py2.7)
#sudo pip3.3 install -U git+https://github.com/kivy/buildozer.git@master
