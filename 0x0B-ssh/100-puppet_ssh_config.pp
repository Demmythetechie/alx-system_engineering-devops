# This manifest file configure the private_key and turns off password authentication
file_line {'/etc/.ssh/ssh_config':
  ensure => 'present',
  path   => '/etc/.ssh/ssh_config',
  match  => '    PasswordAuthentication no',
}

file_line {'/etc/.ssh/ssh_config':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
}
