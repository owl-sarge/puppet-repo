node 'master.puppet' {
  package { 'nginx':
    ensure => latest,
    name   => nginx,
  }
  service { 'nginx':
    ensure => running,
  }
}

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
}

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
  package { 'php':
    ensure => latest,
    name   => php,
  }
  service { 'httpd':
    ensure => running,
  }
}
