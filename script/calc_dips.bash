#!/bin/bash

# calc_dips.bash

# This script should transform a series of GSPC prices into a series of dips.

# Demo:
# ./calc_dips.bash

# I should run this script in the folder which holds this script:
cd `dirname $0`

# I should get the prices before I generate the dips:
./reqp.bash

# I should calculate the dips:
~/anaconda3/bin/python calc_dips.py

exit
