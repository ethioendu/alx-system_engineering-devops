# why Apache is returning a 500 error and fix it and then automate it using Puppet (

exec { 'fix typo':
  command  => 'sudo sed -i "s/.phpp/.php/" /var/www/html/wp-settings.php',
  provider => shell,
}
