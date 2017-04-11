#!/bin/bash

# A script to setup a git repo with the tex_scripts submodule
# - First creates directory <paper_name> for paper, and intializes a git repo within it
# - Creates a git submodule with the tex-scripts repo at <paper_name>/scripts/
# - Copies the Makefile to compile paper.tex

# Constants
TITLE=$1

echo "Setting up paper on github: $TITLE"
mkdir -p $TITLE
cd $TITLE

echo "git initing and adding dummy README"
git init
echo $TITLE >> README.md
git add .

echo "First commit"
git commit -am 'First commit'
git remote add origin git@github.com:spillai/$TITLE.git
git push -u origin master

# A script to setup a git repo with the tex_scripts submodule
echo "Set up tex-scripts submodule"
git submodule add git@github.com:spillai/tex-scripts.git scripts
cp scripts/Makefile Makefile

echo "Modify Makefile with correct title"
echo "Defaults to paper.tex"


