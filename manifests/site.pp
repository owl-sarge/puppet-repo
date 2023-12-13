node 'slave1.puppet' {
  package { 'Apache':
    ensure => latest,
    name   => httpd,
  }

  file { '/var/www/html/index.html':
    ensure => file,
    source => "/vagrant/files/index.html",
  }
  service { 'httpd':
    ensure => running,
  }  
}
