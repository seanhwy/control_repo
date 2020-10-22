node default {
  file {'/root/README':
    ensure => file,
    content => 'zoomzoom mazda miata nd2',
    owner => 'root',
  }
}
