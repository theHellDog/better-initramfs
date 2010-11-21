#!/bin/sh
# Simple script to rebuild website from README.rst

set -x

git checkout master -- README.rst
rst2html.py --link-stylesheet --stylesheet=style.css README.rst > index.html
rm -f README.rst
