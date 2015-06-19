class mcollective::server::service {
  service {'mcollective':
    ensure => 'running',
  }
}