#!/bin/bash

# get_copper.bash

# This script should get copper prices from investing.com

cd ~/forecast4/
rails test test/system/get_copper_test.rb

exit
