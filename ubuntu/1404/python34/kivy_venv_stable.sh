#!/bin/sh
# Create a vitualenv
rm -rf venv
virtualenv -p python3.4 --system-site-packages venv

# Install stable version of Kivy into the virtualenv
venv/bin/pip install kivy

# Install development version of plyer into the virtualenv
venv/bin/pip install git+https://github.com/kivy/plyer.git@master

# Install a couple of dependencies for KivyCatalog
venv/bin/pip install -U pygments docutils

