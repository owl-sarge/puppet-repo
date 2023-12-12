node 'master.puppet' {
    package { 'nginx':
      ensure => latest,
      name   => nginx,
    }
    service { 'nginx':
      ensure => running,
    }
}

node 'slave1.puppet' 'slave2.puppet' {
    package { 'Apache':
      ensure => latest,
      name   => httpd,
    }
    service { 'httpd':
      ensure => running,
    }
}


