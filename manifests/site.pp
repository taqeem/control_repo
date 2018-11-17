node default {
  file { '/root/README':
    ensure => file,
    content => '',
  }
  file { '/root/README':
    ensure => file,
    owner => 'root',
  }
}
