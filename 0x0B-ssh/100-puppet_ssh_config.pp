# This manifest file configure the private_key and turns off password authentication
augeas {'/etc/.ssh/ssh_config':
  changes => [
    "set #   PasswordAuthentication yes '   PasswordAuthentication no'",
    "set #   IdentityFile ~/.ssh/id_rsa '   IdentityFile ~/.ssh/school'",
  ]
}
