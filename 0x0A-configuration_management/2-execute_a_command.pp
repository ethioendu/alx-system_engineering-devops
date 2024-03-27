# kill the process: 'killmenow'
exec {'kill_killmenow_process':
  command => 'pkill -f killmenow',
  path    => ['/usr/bin', '/usr/sbin', '/bin']
}
