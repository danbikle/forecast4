#!/bin/bash

# install_ruby260.bash

# This script should install ruby 2.6.0

# Also it should install Rails 5.2.2

# I should assume that Ruby is not already installed.

cd ~

# I should add syntax to .bashrc
# I should assume that syntax is not already there:

cat<<EOF>/tmp/if_rbenv.bash

if [ -e \${HOME}/.rbenv ]; then
  export PATH="\$HOME/.rbenv/bin:\$PATH"
  eval "\$(rbenv init -)"
fi

EOF

cat /tmp/if_rbenv.bash >> ~/.bashrc

# I should get rbenv from github:
git clone https://github.com/rbenv/rbenv.git      .rbenv
git clone https://github.com/rbenv/ruby-build.git .rbenv/plugins/ruby-build

# I should prepare to use rbenv:
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# I should install Ruby:
rbenv install 2.6.0;rbenv global 2.6.0
gem install rails -v 5.2.2

exit

