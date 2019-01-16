#!/bin/bash

# getfred_t10yr3m.bash

# This script should get FRED T10YR3M which is related to US Housing Starts.


# Ref:
# https://www.google.com/search?q=FRED+T10YR3M+data
# https://fred.stlouisfed.org/series/T10YR3M

cd ~/forecast4/script/

echo I should call Python now to get fred_t10yr3m.csv

~/anaconda3/bin/python getfred_t10yr3m.py

exit
