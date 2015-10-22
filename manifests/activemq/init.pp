class mcollective::activemq (
  $mcollective_username    = $mcollective::params::mcollective_username,
  $mcollective_password    = $mcollective::params::mcollective_password,
  $activemq_admin_password = $mcollective::params::activemq_admin_password,
  $keystore_password       = $mcollective::params::keystore_password,

  ) inherits mcollective::params {

  ensure_packages('activemq')
  
  file { '/etc/activemq/instances-available/main/activemq.xml':
    owner   => 'root',
    group   => 'root',
    mode    => '0640',
    content => template('mcollective/activemq/activemq.xml.erb'),
    require => Package['activemq'],
  }
  class { 'mcollective::activemq::keystores':
    keystore_password => $::mcollective::params::keystore_password,
    require           => [Package['activemq'],File['/etc/activemq/instances-available/main/activemq.xml']],
  }
}
