#!/bin/bash -eux
/usr/bin/gem install ohai --no-ri --no-rdoc --verbose ruby-shadow
/usr/bin/gem install chef --no-ri --no-rdoc --verbose

mkdir -p /etc/chef
