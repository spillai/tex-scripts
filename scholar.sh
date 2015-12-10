#!/bin/bash

# Google scholar search from command line
TITLE=$1
echo "Searching google scholar for paper: $TITLE"
python ~/code/scholar.py/scholar.py --phrase $TITLE -c 3 --citation bt
