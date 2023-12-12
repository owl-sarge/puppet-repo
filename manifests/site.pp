node 'slave2.puppet' {
    package { 'Apache2':
      ensure => latest,
      name   => httpd,
    }
    service { 'httpd':
      ensure => running,
    }
}
