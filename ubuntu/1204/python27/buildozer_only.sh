 #!/bin/sh

sudo apt-get install -y build-essential git zlib1g-dev python2.7 python2.7-dev
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | sudo python2.7
rm setuptools*.zip
sudo easy_install-2.7 -U pip
sudo pip2.7 install -U virtualenv
sudo pip2.7 install -U cython
sudo pip2.7 install -U git+https://github.com/kivy/buildozer.git@master
