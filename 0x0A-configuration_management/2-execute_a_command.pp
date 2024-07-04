# ensure the process running and kill it with pkill

exec { 'pkill_killmenow' :
  command => '/usr/bin/pkill killmenow',
  onlyif  => '/usr/bin/pgrep killmenow',
  path    => ['/usr/bin', '/bin'],
}
