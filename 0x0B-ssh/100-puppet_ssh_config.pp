#create ssh config file
#configuration must be configured to use the private key ~/.ssh/school
#configuration must be configured to refuse to authenticate using a password
file_line { 'change identity_file':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '   IdentityFile ~/.ssh/school',
}

file_line { 'turn off pwd auth':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '   PasswordAuthentication no',
}
