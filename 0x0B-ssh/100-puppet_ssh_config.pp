#create ssh config file
#configuration must be configured to use the private key ~/.ssh/school
#configuration must be configured to refuse to authenticate using a password
class ssh_config {
  file { '/home/vagrant/.ssh/config':
    ensure  => present,
    mode    => '0600',
    content => "
      Host your_server
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
    ",
    owner   => 'vagrant',
    group   => 'vagrant',
  }
}
