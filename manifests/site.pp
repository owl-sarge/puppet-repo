class { 'apache': }

apache::listen { '80': }

apache::listen { '8000': }

file { '/var/www/html/index.html':
    ensure => file,
    source => "/vagrant/files/index.html",
}
#service { 'httpd':
#  ensure => running,
#}
