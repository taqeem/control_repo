node default {
  file { '/root/README':
    ensure => present,
    content => '',
  }
  file { '/root/README1':
    ensure => file,
    owner => 'root',
  } 
  file { '/root/READMEDir':
    ensure => directory,
    owner => 'root',
    content => 'test....'
  } 
  user { 'mir': 
    ensure => present, 
    home   => '/home/mir', 
    #manage_home => true,
  }
  notify {'HelloWorld':}
}


node 'master.puppet.vm' {
  include role::master_server
}

node /^web/ { 
  include role::app_server
}
node /^db/ {
  include role::db_server
}
