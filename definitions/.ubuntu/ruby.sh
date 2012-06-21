#!/bin/bash -eux
apt-get install build-essential ruby1.9.1-full -y

update-alternatives --install /usr/bin/ruby ruby /usr/bin/ruby1.9.1 400 \
  --slave   /usr/share/man/man1/ruby.1.gz ruby.1.gz \
  /usr/share/man/man1/ruby1.9.1.1.gz \
  --slave   /usr/bin/ri ri /usr/bin/ri1.9.1 \
  --slave   /usr/bin/irb irb /usr/bin/irb1.9.1 \
  --slave   /usr/bin/rdoc rdoc /usr/bin/rdoc1.9.1

update-alternatives --config ruby

cd /tmp
wget http://production.cf.rubygems.org/rubygems/rubygems-1.6.2.tgz
tar zxf rubygems-1.6.2.tgz
cd rubygems-1.6.2
ruby setup.rb --no-format-executable

echo 'gem: --no-ri --no-rdoc' > /etc/gemrc

/usr/bin/gem install ohai --no-ri --no-rdoc --verbose ruby-shadow
/usr/bin/gem install chef --no-ri --no-rdoc --verbose

mkdir -p /etc/chef
