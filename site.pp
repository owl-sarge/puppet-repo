node 'slave1.puppet' {
    package { 'Apache2':
      ensure => latest,
      name   => httpd,
    }
}
