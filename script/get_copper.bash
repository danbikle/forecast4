#!/bin/bash

# get_copper.bash

# This script should get copper prices from investing.com

cd ~/forecast4/
. script/invusr.bash
rails test test/system/get_copper_test.rb
cd ~/Downloads/
mv Copper*Futures*Historical*Data.csv copper_hist.csv
echo I should have a new download of  copper_hist.csv
date
ls -la copper_hist.csv

exit
