# This manifest file configure the private_key and turns off password authentication
file_line {'/etc/.ssh/ssh_config':
  ensure            => absent,
  line              => '   PasswordAuthentication no',
  path              => '/etc/.ssh/ssh_config',
  match             => '^#   PasswordAuthentication yes',
  match_for_absence => true,
}

file_line {'/etc/.ssh/ssh_config':
  ensure            => absent,
  line              => '   IdentityFile ~/.ssh/school',
  path              => '/etc/.ssh/ssh_config',
  match             => '^#   IdentityFile ~/.ssh/id_rsa',
  match_for_absence => true,
}
