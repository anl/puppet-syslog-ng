# == Class: syslogng::params
#
# Params class for syslogng.
#
# === Examples
#
# class syslogng inherits syslogng::params {}
#
# === Authors
#
# Andrew Leonard
#
# === Copyright
#
# Copyright 2012 Andrew Leonard
#
class syslogng::params {
  case $::operatingsystem {
    ubuntu: {
      $package = 'syslog-ng'
      $service = 'syslog-ng'
    }
    default: {
      fail("Unsupported os: ${::operatingsystem}")
    }
  }
}
