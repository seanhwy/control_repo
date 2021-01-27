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
    content => 'zoomzoom mazda miata nd2 update from topstone Jan 210126',
    owner => 'root',
}
 



node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}


