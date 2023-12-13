node 'master.puppet' {
  package { 'nginx':
    ensure => latest,
    name   => nginx,
  }

  file { '/etc/nginx/conf.d/nginx.conf':
    ensure => file,
    source => "/vagrant/files/proxy.conf",
  }
 
  service { 'nginx':
    ensure => running,
  }
}

 
