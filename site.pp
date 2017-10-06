1
file {'/tmp/it_works.txt':                        # resource type file and filename
  ensure  => present,                             # make sure it exists
  mode    => '0644',                              # file permissions
  content => "It works on ${ipaddress_ens3}!\n",  # Print the eth0 IP fact
}
user { 'bart':
        ensure => present,
        comment => 'Bartosz Miklaszewski',
        home => '/home/bart',
        managehome => true,
        shell      => '/bin/bash',
}
ssh_authorized_key { 'bart':
        ensure => present,
        user => 'bart',
        type => 'rsa',
        key => 'pub key'
}
ssh_authorized_key { 'bart.home':
        ensure => present,
        user => 'bart',
        type => 'rsa',
        key => 'pub key'
}
#test
