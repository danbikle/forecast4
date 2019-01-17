#!/bin/bash

# get_copper.bash

# This script should get copper prices from investing.com

cd ~/forecast4/
. script/invusr.bash
rails test test/system/get_copper_test.rb

exit
