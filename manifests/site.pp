node default {
if ($facts[kernelversion] == "3.10.9") { 
   $message = "This machine OS is of the type $kernelversion \n" 
} else { 
   $message = "This machine is unknown wrong \n" 
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
