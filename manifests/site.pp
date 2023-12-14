node 'master.puppet' {
include nginx
nginx::resource::server {'static':
  listen_port => 80,
  proxy       => 'http://192.168.56.21:80',
}
nginx::resource::server {'dynamic':
  listen_port => 80,
  proxy       => 'http://192.168.56.22:80',
}
service { 'nginx':
    ensure => running,
  }
}
