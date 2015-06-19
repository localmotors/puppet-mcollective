class mcollective::server (

  $ca_certificate  = $mcollective::params::ca_certificate,  # uses the puppet ca cert by default
  $server_cert     = $mcollective::params::server_cert,     # uses the puppet client cert by default
  $server_key      = $mcollective::params::server_key,      # uses the puppet client key by default
  $client_cert     = $mcollective::params::client_cert,
  $client_key      = $mcollective::params::client_key,

  ) inherits mcollective::params {
  
  package { 'mcollective':
    ensure => 'installed',
  }
  file { '/etc/mcollective/ssl/ca.pem':
    owner => 'root',
    group => 'root',
    mode => '640',
    source => $ca_certificate,
    require => Package['mcollective'],
  }
  file { '/etc/mcollective/ssl/server_public.pem':
    owner => 'root',
    group => 'root',
    mode => '640',
    source => $server_cert,
    require => Package['mcollective'],
  }
  file { '/etc/mcollective/ssl/server_private.pem':
    owner => 'root',
    group => 'root',
    mode => '600',
    source => $server_key,
    require => Package['mcollective'],
  }
  file { '/etc/mcollective/clients/client_cert.pem':
    owner => 'root',
    group => 'root',
    mode => '640',
    content => $client_cert,
    require => Package['mcollective'],
  }
  file{"/etc/mcollective/facts.yaml":
      owner    => root,
      group    => root,
      mode     => 400,
      loglevel => debug, # reduce noise in Puppet reports
      content  => inline_template("<%= scope.to_hash.reject { |k,v| k.to_s =~ /(uptime_seconds|timestamp|free)/ }.to_yaml %>"), # exclude rapidly changing facts
      require => Package['mcollective'],
    }
}