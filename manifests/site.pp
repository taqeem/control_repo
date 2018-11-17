node default {
  file { '/root/README':
    ensure => file,
    content => '',
  }
  file { '/root/test/README':
    ensure => file,
    owner => 'root',
  }
}
