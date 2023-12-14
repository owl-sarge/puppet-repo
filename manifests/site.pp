class { 'apache': }

apache::vhost { 'localhost':
  ip       => '127.0.0.1',
  port     => '8000'
  docroot  => '/var/www/first',
  ip_based => true,
}

file { '/var/www/html/index.html':
    ensure => file,
    source => "/vagrant/files/index.html",
}
