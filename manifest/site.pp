node default {
  file { '/root/test':
    ensure => file,
    content => 'This is a readme',
  }
}
