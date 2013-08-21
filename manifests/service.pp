# == Class: lumberjack::service
#
# A class to manage the lumberjack service
#
# === Parameters:
#
# None
#
# === Variables:
#
# None
#
# === Examples:
#
# None
#
# === Authors:
#
# * Tray Torrance
#
# === Copyright:
#
# Copyright 2013, Tray Torrance
# unless otherwise noted.
#
class lumberjack::service {
  Class['lumberjack::configure'] ~> Class['lumberjack::service']

  service {
    'lumberjack':
      ensure => running,
      enable => true,
  }
}

