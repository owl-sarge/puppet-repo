class { 'apache': }

apache::vhost { 'example.com':
  ip      => '127.0.0.1',
  port    => 80,
  docroot => '/var/www/html',
}

file { '/var/www/html/index.html':
    ensure => file,
    source => "/vagrant/files/index.html",
}
