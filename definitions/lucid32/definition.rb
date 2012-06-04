require File.dirname(__FILE__) + '/../.ubuntu/session.rb'

session =
  UBUNTU_SESSION.merge(
    :iso_file => "ubuntu-10.04.4-server-i386.iso",
    :iso_src => "http://releases.ubuntu.com/10.04.4/ubuntu-10.04.4-server-i386.iso",
    :iso_md5 => "fc08a01e78348e3918180ea91a6883bb",
    :os_type_id => 'Ubuntu',
)

Veewee::Session.declare session
