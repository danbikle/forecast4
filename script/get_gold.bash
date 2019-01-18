#!/bin/bash

# get_gold.bash

# This script should get gold prices from investing.com

cd ~/forecast4/
. script/invusr.bash
rails test test/system/get_gold_test.rb
cd ~/Downloads/
mv Gold*Futures*Historical*Data.csv gold_hist.csv
echo I should have a new download of  gold_hist.csv
date
ls -la gold_hist.csv

exit
