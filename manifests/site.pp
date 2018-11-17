node default {
  file { '/root/README':
    ensure => file,
    content => '',
  }
  file { '/root/README1':
    ensure => file,
    owner => 'root',
  }
}
