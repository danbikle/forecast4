#!/bin/bash

# reqp.bash

# This script should wrap reqp.py which should use the requests package to get prices.

# Demo:
# ./reqp.bash

# I should run this script in the folder which holds this script:
cd `dirname $0`

~/anaconda3/bin/python reqp.py tkrlist.txt

exit
