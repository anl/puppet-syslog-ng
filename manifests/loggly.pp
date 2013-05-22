# == Class: syslogng::loggly
#
# Configure syslog-ng for use with Loggly.
#
# Does not currently handle authorization.
#
# === Parameters
#
# Document parameters here.
#
# [*port*]
#   Port to connect to logs.loggly.com on; must be passed as a *string* (not
#   integer) for validation to pass.
#
# === Examples
#
#  class { syslogng::loggly: port => '12345' }
#
# === Authors
#
# Andrew Leonard
#
# === Copyright
#
# Copyright 2013 Andrew Leonard
#
class syslogng::loggly($port) {

  # Ensure $port is numeric:
  validate_re($port, '^[0-9]+$')

  file { "${syslogng::params::confd}/loggly.conf":
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    content => template('syslogng/loggly.conf.erb'),
    notify  => Service[$syslogng::params::service],
  }

}
