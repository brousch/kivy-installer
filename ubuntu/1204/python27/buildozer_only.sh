 #!/bin/sh

# Install necessary system packages
sudo apt-get install -y build-essential git zlib1g-dev python2.7 python2.7-dev ia32-libs

# Bootstrap a current Python environment
sudo apt-get remove --purge -y python-virtualenv python-pip python-setuptools
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | sudo python2.7
rm setuptools*.zip
sudo easy_install-2.7 -U pip
sudo pip2.7 install -U virtualenv

# Install current version of Cython
sudo apt-get remove --purge -y cython
sudo pip2.7 install -U cython

# Install Buildozer from master
sudo pip2.7 install -U git+https://github.com/kivy/buildozer.git@master
