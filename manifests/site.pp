node 'slave2.puppet' {
  package { 'Apache':
    ensure => latest,
    name   => httpd,
  }
  
  package { 'php':
    ensure => latest,
  }
  
  file { '/var/www/html/index.php':
    ensure => file,
    source => "/vagrant/files/index.php",
  }
  
  file { '/var/www/html/index.html':
    ensure => absent,
  }
  
  service { 'php':
    name => php-fpm,
    ensure => running,
  }
  
  service { 'httpd':
    ensure => running,
  }
}
