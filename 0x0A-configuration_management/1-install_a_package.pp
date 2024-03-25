# Using Puppet, install flask from pip3
# Install a specific version of flsk(2.1.0)
package { 'flask':
	ensure   => '2.1.0',
	provider => 'pip'
}
