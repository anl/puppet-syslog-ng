# == Class: syslogng
#
# Install and configure syslog-ng.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Examples
#
# include syslogng
#
# === Authors
#
# Andrew Leonard
#
# === Copyright
#
# Copyright 2013 Andrew Leonard
#
class syslogng inherits syslogng::params {

  package { $syslogng::params::package: ensure => present }

}
