require File.dirname(__FILE__) + '/../.ubuntu/session.rb'

session =
  UBUNTU_SESSION.merge(
    :iso_file => "ubuntu-10.04.4-server-amd64.iso",
    :iso_src => "http://releases.ubuntu.com/10.04.4/ubuntu-10.04.4-server-amd64.iso",
    :iso_md5 => "9b218654cdcdf9722171648c52f8a088",
    :os_type_id => 'Ubuntu',
)

Veewee::Session.declare session
