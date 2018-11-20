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
    ensure => absent,
    owner => 'root',
    content => 'test....'
  } 
  notify {'Hellow World':}
}
