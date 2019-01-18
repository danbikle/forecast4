#!/bin/bash

# getfred_csus.bash

# This script should get FRED Cape Shiller data which is related to
# "S&P/Case-Shiller U.S. National Home Price Index"

# Ref:
# https://www.google.com/search?q=FRED+CSUSHPINSA+data
# https://fred.stlouisfed.org/series/CSUSHPINSA

cd ~/forecast4/script/

echo I should call Python now to get fred_csus.csv

~/anaconda3/bin/python getfred_csus.py

exit

