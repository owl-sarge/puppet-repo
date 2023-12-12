node 'slave2.puppet' {
  package { 'Apache':
    ensure => latest,
    name   => httpd,
  }
  file { '/var/www/html/index.php':
    ensure => file,
    source => "/vagrant/files/index.php",
  }
  file { '/var/www/html/index.html':
    ensure => absent,
  }
  file { '/var/www/html/dynamic/':
    ensure => directory,
  }
  file { '/var/www/html/dynamic/index.php':
    ensure => file,
    source => "/var/www/html/index.php",
  }
  package { 'php':
    ensure => latest,
    name   => php,
  }
  service { 'php':
    name => php-fpm,
    ensure => running,
  }
  service { 'httpd':
    ensure => running,
  }
}
