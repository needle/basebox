require File.dirname(__FILE__) + '/../.ubuntu/session.rb'

session =
  UBUNTU_SESSION.merge(
    :iso_file => "ubuntu-12.04-server-i386.iso",
    :iso_src => "http://releases.ubuntu.com/12.04/ubuntu-12.04-server-i386.iso",
    :iso_md5 => "32184a83c8b5e6031e1264e5c499bc03",
    :os_type_id => 'Ubuntu',
)

Veewee::Session.declare session