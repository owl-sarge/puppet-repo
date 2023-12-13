node 'slave1.puppet' {
  package { 'Apache':
    ensure => latest,
    name   => httpd,
  }

  file { '/var/www/html/index.html':
    ensure => file,
    source => "/vagrant/files/index.html",
  }
  file { '/var/www/static/':
    ensure => directory,
  }
  file { '/var/www/static/index.html':
    ensure => file,
    source => "/var/www/html/index.html",
  }
  service { 'httpd':
    ensure => running,
  }  
}
