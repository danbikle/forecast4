#!/bin/bash

# getfred_usslind.bash

# This script should get FRED USSLIND data which is related to
# "Leading Index For US".

# Ref:
# https://www.google.com/search?q=FRED+USSLIND+data
# https://fred.stlouisfed.org/series/USSLIND

cd ~/forecast4/script/

echo I should call Python now to get fred_usslind.csv

~/anaconda3/bin/python getfred_usslind.py

exit
