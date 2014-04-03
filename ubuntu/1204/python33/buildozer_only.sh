#!/bin/sh

sudo apt-get install -y build-essential git zlib1g-dev python3.3 python3.3-dev
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | sudo python3.3
rm setuptools*.zip
sudo easy_install-3.3 -U pip
sudo pip3.3 install -U virtualenv
sudo pip3.3 install -U cython
#sudo pip3.3 install -U git+https://github.com/kivy/buildozer.git@master
