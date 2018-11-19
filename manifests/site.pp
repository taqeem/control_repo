node default {
  file { '/root/README':
    ensure => absent,
    content => '',
  }
  file { '/root/README1':
    ensure => file,
    owner => 'root',
  } 
  notify {'Hellow World':}
}
