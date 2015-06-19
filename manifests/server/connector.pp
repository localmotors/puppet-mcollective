
# /etc/puppet/modules/mcollective_core/manifests/server/connector.pp
# ...
# Connector settings:
class mcollective::server::connector (

  $connector                             = $mcollective::params::connector
  $direct_addressing                     = $mcollective::params::direct_addressing
  $plugin.activemq.pool.size             = $mcollective::params::plugin.activemq.pool.size
  $plugin.activemq.pool.1.host           = $mcollective::params::plugin.activemq.pool.1.host
  $plugin.activemq.pool.1.port           = $mcollective::params::plugin.activemq.pool.1.port
  $plugin.activemq.pool.1.user           = $mcollective::params::plugin.activemq.pool.1.user
  $plugin.activemq.pool.1.password       = $mcollective::params::plugin.activemq.pool.1.password
  $plugin.activemq.pool.1.ssl            = $mcollective::params::plugin.activemq.pool.1.ssl
  $plugin.activemq.pool.1.ssl.fallback   = $mcollective::params::plugin.activemq.pool.1.ssl.fallback

  $plugin.activemq.pool.1.ssl.ca         = $mcollective::params::plugin.activemq.pool.1.ssl.ca
  $plugin.activemq.pool.1.ssl.cert       = $mcollective::params::plugin.activemq.pool.1.ssl.cert
  $plugin.activemq.pool.1.ssl.key        = $mcollective::params::plugin.activemq.pool.1.ssl.key

  $securityprovider                      = $mcollective::params::securityprovider
  $plugin.ssl_client_cert_dir            = $mcollective::params::plugin.ssl_client_cert_dir
  $plugin.ssl_server_private             = $mcollective::params::plugin.ssl_server_private
  $plugin.ssl_server_public              = $mcollective::params::plugin.ssl_server_public

  $identity                              = $mcollective::params::identity
  $factsource                            = $mcollective::params::factsource
  $plugin.yaml                           = $mcollective::params::plugin.yaml
  $classesfile                           = $mcollective::params::classesfile

  $collectives                           = $mcollective::params::collectives
  $main_collective                       = $mcollective::params::main_collective

  $registerinterval                      = $mcollective::params::registerinterval

  $rpcaudit                              = $mcollective::params::rpcaudit
  $rpcauditprovider                      = $mcollective::params::rpcauditprovider
  $plugin.rpcaudit.logfile               = $mcollective::params::plugin.rpcaudit.logfile

  $logger_type                           = $mcollective::params::logger_type
  $loglevel                              = $mcollective::params::loglevel
  $logfile                               = $mcollective::params::logfile
  $keeplogs                              = $mcollective::params::keeplogs
  $max_log_size                          = $mcollective::params::max_log_size
  $logfacility                           = $mcollective::params::logfacility

  $libdir                                = $mcollective::params::libdir
  $daemonize                             = $mcollective::params::daemonize

  ) inherits mcollective::params {
  mcollective::server::setting {
    'connector':
      value => $connector;
    'direct_addressing':
      value => $direct_addressing;
    'plugin.activemq.pool.size':
      value => $plugin.activemq.pool.size;
    'plugin.activemq.pool.1.host':
      value => $plugin.activemq.pool.1.host;
    'plugin.activemq.pool.1.port':
      value => $plugin.activemq.pool.1.port;
    'plugin.activemq.pool.1.user':
      value => $plugin.activemq.pool.1.user;
    'plugin.activemq.pool.1.password':
      value => $plugin.activemq.pool.1.password;
    'plugin.activemq.pool.1.ssl':
      value => $plugin.activemq.pool.1.ssl;
    'plugin.activemq.pool.1.ssl.fallback':
      value => $plugin.activemq.pool.1.ssl.fallback;

    'plugin.activemq.pool.1.ssl.ca':
      value => $plugin.activemq.pool.1.ssl.ca;
    'plugin.activemq.pool.1.ssl.cert':
      value => $plugin.activemq.pool.1.ssl.cert;
    'plugin.activemq.pool.1.ssl.key':
      value => $plugin.activemq.pool.1.ssl.key;

    'securityprovider':
      value => $securityprovider;
    'plugin.ssl_client_cert_dir':
      value => $plugin.ssl_client_cert_dir;
    'plugin.ssl_server_private':
      value => $plugin.ssl_server_private;
    'plugin.ssl_server_public':
      value => $plugin.ssl_server_public;

    'identity':
      value => $identity;
    'factsource':
      value => $factsource;
    'plugin.yaml':
      value => $plugin.yaml;
    'classesfile':
      value => $classesfile;

    'collectives':
      value => $collectives;
    'main_collective':
      value => $main_collective;

    'registerinterval':
      value => $registerinterval;

    'rpcaudit':
      value => $rpcaudit;
    'rpcauditprovider':
      value => $rpcauditprovider;
    'plugin.rpcaudit.logfile':
      value => $plugin.rpcaudit.logfile;

    'logger_type':
      value => $logger_type;
    'loglevel':
      value => $loglevel;
    'logfile':
      value => $logfile;
    'keeplogs':
      value => $keeplogs;
    'max_log_size':
      value => $max_log_size;
    'logfacility':
      value => $logfacility;

    'libdir':
      value => $libdir;
    'daemonize':
      value => $daemonize;
  }
}
# ...