node default {
package { 'Apache2':
  ensure => latest,
  name   => httpd
  }
}
