# == Class: lumberjack::install
#
# A class for installing lumberjack
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
class lumberjack::install {
  package { 'lumberjack': ensure => installed }
}

