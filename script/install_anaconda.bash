#!/bin/bash

# install_anaconda.bash

# This script should install Anaconda python.

# I should assume that Anaconda is not already installed.

set -x # I should echo my steps as I walk.

cd ~

/usr/bin/curl https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh > Anaconda3-2018.12-Linux-x86_64.sh

bash Anaconda3-2018.12-Linux-x86_64.sh -b

mv ~/anaconda3/bin/curl ~/anaconda3/bin/curl_ana

echo 'export PATH="${HOME}/anaconda3/bin:$PATH"' >> ~/.bashrc

exit

