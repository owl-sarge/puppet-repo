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
   file { '/var/www/html/static/':
    ensure => directory,
  }
  file { '/var/www/html/static/index.html':
    ensure => file,
    source => "/var/www/html/index.html",
  }
}
