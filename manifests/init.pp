# == Class: mcollective
#
# Full description of class mcollective here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'mcollective':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class mcollective (
  $mcollective_username     = $mcollective::params::mcollective_username,
  $mcollective_password     = $mcollective::params::mcollective_password,
  $activemq_admin_password  = $mcollective::params::activemq_admin_password,
  $keystore_password        = $mcollective::params::keystore_password,

  # certificates
  $ca_certificate  = $mcollective::params::ca_certificate,  # uses the puppet ca cert by default
  $activemq_cert   = $mcollective::params::activemq_cert,   # uses the puppet client cert by default
  $activemq_key    = $mcollective::params::activemq_key,    # uses the puppet client key by default
  $server_cert     = $mcollective::params::server_cert,     # uses the puppet client cert by default
  $server_key      = $mcollective::params::server_key,      # uses the puppet client key by default
  $client_cert     = $mcollective::params::client_cert,
  $client_key      = $mcollective::params::client_key,

  ) inherits mcollective::params {


}
