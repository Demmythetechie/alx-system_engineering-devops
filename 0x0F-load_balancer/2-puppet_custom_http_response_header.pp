# This puppet script adds a custom HTTP header with puppet

file_line { 'insert line at number 52':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  line   => 'add_header X-Served-By $hostname',
  match  => '',
  after  => 53,
}
