file_line {'identifiying private key file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '   Identify ~/.ssh/school',
}

file_line {'PasswordAuthentication':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '   PasswordAuthentication no',
  match  => '^PasswordAuthentication',
}
