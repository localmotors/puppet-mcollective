class mcollective::client (

  $server_cert     = $mcollective::params::server_cert,     # uses the puppet client cert by default
  $server_key      = $mcollective::params::server_key,      # uses the puppet client key by default
  $client_cert     = $mcollective::params::client_cert,
  $client_key      = $mcollective::params::client_key,
  
  ) inherits mcollective::params {
  
  package { 'mcollective-client':
    ensure => 'installed',
  }
}