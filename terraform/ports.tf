resource "openstack_networking_port_v2" "port_1" {
  name       = "port"
  network_id = openstack_networking_network_v2.network_1.id
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.subnet_1.id
  }
}
resource "openstack_networking_port_v2" "port_1_ext" {
  name       = "port"
  network_id = openstack_networking_network_v2.network_2.id
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.subnet_2.id
  }
}

resource "openstack_networking_port_v2" "port_2" {
  name       = "port2"
  network_id = openstack_networking_network_v2.network_1.id
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.subnet_1.id
  }
}
resource "openstack_networking_port_v2" "port_2_ext" {
  name       = "port"
  network_id = openstack_networking_network_v2.network_2.id
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.subnet_2.id
  }
}

resource "openstack_networking_port_v2" "port_3" {
  name       = "port3"
  network_id = openstack_networking_network_v2.network_1.id
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.subnet_1.id
  }
}
resource "openstack_networking_port_v2" "port_3_ext" {
  name       = "port"
  network_id = openstack_networking_network_v2.network_2.id
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.subnet_2.id
  }
}

resource "openstack_networking_port_v2" "port_4" {
  name       = "port4"
  network_id = openstack_networking_network_v2.network_1.id
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.subnet_1.id
  }
}
resource "openstack_networking_port_v2" "port_4_ext" {
  name       = "port"
  network_id = openstack_networking_network_v2.network_2.id
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.subnet_2.id
  }
}