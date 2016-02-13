#!/bin/bash

# A script to setup a git repo with the tex_scripts submodule
git submodule add git@github.mit.edu:spillai/tex-scripts.git scripts
cp scripts/Makefile Makefile

echo "Modify Makefile with correct title"
