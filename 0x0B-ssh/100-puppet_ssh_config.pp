# using Puppet to make changes to our configuration file.
# Requirements:Your SSH client configuration must
#   configured to use the private key ~/.ssh/school
#   configured to refuse to authenticate using a password.

include stdlib

File_line { 'Turn off passwd auth':
  ensure  => 'present',
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  replace => 'true',
}

File_line { 'Declare identity file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
}
