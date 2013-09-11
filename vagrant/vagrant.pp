# Include this module
include syslogng
class { syslogng::loggly:
  port => 12345,
}

