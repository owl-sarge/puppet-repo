node 'slave1.puppet' {
  package { 'Apache':
    ensure => latest,
    name   => httpd,
  }
  service { 'httpd':
    ensure => running,
  }  
  file { '/var/www/html/index.html':
    ensure => file,
    source => "/vagrant/files/index.html",
  }
   file { '/vagrant/files/static/':
    ensure => directory,
  }
  file { '/vagrant/files/static/index.html':
    ensure => file,
    source => "/var/www/html/index.html",
  }
}
