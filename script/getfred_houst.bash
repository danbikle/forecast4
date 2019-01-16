#!/bin/bash

# getfred_houst.bash

# This script should get FRED HOUST which is related to US Housing Starts.


# Ref:
# https://www.google.com/search?q=FRED+HOUST+data
# https://fred.stlouisfed.org/series/HOUST

cd ~/forecast4/script/

echo I should call Python now to get fred_houst.csv

~/anaconda3/bin/python getfred_houst.py

exit
