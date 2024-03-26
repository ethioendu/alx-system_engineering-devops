#autoamtically install nginx

package { 'nginx install':
  ensure => installed,
}

file_line {'redirect':
  ensure => 'present',
  path   => '/etc/nginx/sites-enabled/default',
  after  => 'listen 80 deault_server;',
  line   => 'rewrite ^/redirect_me https://www.trashloop.com permanent;',
}

file {'/var/www/html/index.html':
  content => 'Hello World',
}

service {'nginx':
  ensure  => running,
  require => Package['nginx'],
}
