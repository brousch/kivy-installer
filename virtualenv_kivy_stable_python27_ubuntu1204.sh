#!/bin/sh
# Create a vitualenv
sudo rm -rf venv
virtualenv -p python2.7 --system-site-packages venv

# Install stable version of Kivy into the virtualenv
venv/bin/pip install kivy

# Install development version of buildozer into the virtualenv
venv/bin/pip install git+https://github.com/kivy/buildozer.git@master

# Install a couple of dependencies for KivyCatalog
venv/bin/pip install -U pygments docutils

