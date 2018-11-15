node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
  }
  file { '/root/test':
    ensure => file,
    content => 'This is a readme',
  }
}
