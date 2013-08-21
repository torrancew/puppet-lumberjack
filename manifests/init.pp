# == Class: lumberjack
#
# The lumberjack module
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
class lumberjack {
  class { 'lumberjack::install': }
  class { 'lumberjack::configure': }
  class { 'lumberjack::service': }

  anchor { 'lumberjack::begin': } -> Class['lumberjack::install']
  Class['lumberjack::service']    -> anchor { 'lumberjack::end': }
}

