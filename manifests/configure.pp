# == Class: lumberjack::configure
#
# A class for configuring lumberjack
#
# === Parameters:
#
# [*server*]
#   The Lumberjack server to connect to
#
# [*port*]
#   The port to connect to the server on
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
class lumberjack::configure(
  $server            = 'lumberjack',
  $port              = 5043,
  $configure_rsyslog = false,
) {
  Class['lumberjack::install'] -> Class['lumberjack::configure']

  file {
    '/etc/default/lumberjack':
      ensure  => file,
      owner   => 'root',
      group   => 'root',
      mode    => 0644,
      content => template('lumberjack/lumberjack.default');

    '/etc/lumberjack.conf':
      ensure  => file,
      owner   => 'root',
      group   => 'root',
      mode    => 0644,
      content => template('lumberjack/lumberjack.json.erb');
  }

  if $configure_rsyslog {
    file {
      '/etc/rsyslog.d/00-lumberjack.conf':
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => 0644,
        content => template('lumberjack/lumberjack-rsyslog.conf.erb');
    }
  }
}

