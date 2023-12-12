node 'master.puppet' {
    package { 'nginx':
      ensure => latest,
      name   => nginx,
    }
    service { 'nginx':
      ensure => running,
    }
}
