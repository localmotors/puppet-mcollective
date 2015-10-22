class mcollective::params {

  # logins
  $mcollective_username     = 'mcollective'
  $mcollective_password     = undef
  $activemq_admin_password  = undef
  $keystore_password        = $mcollective_password

  # certificates
  $ca_certificate           = '/var/lib/puppet/ssl/ca/ca_crt.pem'                      # uses the puppet ca cert by default
  $activemq_cert            = "/var/lib/puppet/ssl/certs/${::clientcert}.pem"          # uses the puppet client cert by default
  $activemq_key             = "/var/lib/puppet/ssl/private_keys/${::clientcert}.pem"   # uses the puppet client key by default
  $server_cert              = "/var/lib/puppet/ssl/certs/${::clientcert}.pem"
  $server_key               = "/var/lib/puppet/ssl/private_keys/${::clientcert}.pem"
  $client_cert              = undef
  $client_key               = undef

  $activemq_confdir         = '/etc/activemq'
  $activemq_user            = 'activemq'

  # connector settings
  $connector          = 'activemq'
  $direct_addressing  = '1'
  $plugin.activemq.pool.size = '1'
  $plugin.activemq.pool.1.host = 'localhost'
  $plugin.activemq.pool.1.port = '61614'
  $plugin.activemq.pool.1.user = $mcollective_username
  $plugin.activemq.pool.1.password = $mcollective_password
  $plugin.activemq.pool.1.ssl = '1'
  $plugin.activemq.pool.1.ssl.fallback = '0'

  $plugin.activemq.pool.1.ssl.ca = '/etc/mcollective/certs/ca.pem'
  $plugin.activemq.pool.1.ssl.cert = '/etc/mcollective/certs/server_public.pem'
  $plugin.activemq.pool.1.ssl.key = '/etc/mcollective/certs/server_private.pem'

  $securityprovider = 'ssl'
  $plugin.ssl_client_cert_dir = '/etc/mcollective/clients'
  $plugin.ssl_server_private = '/etc/mcollective/server_private.pem'
  $plugin.ssl_server_public = '/etc/mcollective/server_public.pem'

  $identity = $::fqdn
  $factsource = yaml
  $plugin.yaml = /etc/mcollective/facts.yaml
  $classesfile = /var/lib/puppet/state/classes.txt


  $collectives = mcollective
  $main_collective = mcollective

  $registerinterval = 600

  $rpcaudit = 1
  $rpcauditprovider = logfile
  $plugin.rpcaudit.logfile = /var/log/mcollective-audit.log

  $logger_type = file
  $loglevel = info
  $logfile = /var/log/mcollective.log
  $keeplogs = 5
  $max_log_size = 2097152
  $logfacility = user

  $libdir = /usr/share/mcollective/plugins
  $daemonize = 1

}
