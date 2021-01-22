node default {
if ($facst[kernelversion] == "3.10.0") { 
   $message = "This machine OS is of the type $kernelverion \n" 
} else { 
   $message = "This machine is unknown \n" 
} 

file { "/tmp/machineOperatingSystem.txt": 
   ensure => file, 
   content => "$message" 
}

  file {'/root/README':
    ensure => file,
    content => 'zoomzoom mazda miata nd2 update from topstone Jan 4',
    owner => 'root',
  }
}
