#!/bin/bash

# test_system.bash

# This script should run some system tests:

cd ~/forecast4/

# Run all:
# rails test:system

# Just run this:
rails test test/system/visit_links_test.rb

exit
