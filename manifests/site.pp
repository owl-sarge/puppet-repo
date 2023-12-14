class { 'apache': }

apache::listen { '8000': }

file { '/var/www/html/index.html':
    ensure => file,
    source => "/vagrant/files/index.html",
}
