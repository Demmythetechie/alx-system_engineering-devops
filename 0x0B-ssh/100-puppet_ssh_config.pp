# Added a private key file and PasswordAuthentication
file_line {'identifiying private key file':
  ensure   => 'present',
  path     => '/etc/ssh/ssh_config',
  line     => '   Identify ~/.ssh/school',
  match    => '^#   IdentityFile',
  replace  => 'false',
}

file_line {'PasswordAuthentication':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '   PasswordAuthentication no',
  match  => '^#   PasswordAuthentication',
}
