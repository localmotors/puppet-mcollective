class mcollective::activemq inherits mcollective::params {
  package { 'activemq':
    ensure => installed,
  }
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