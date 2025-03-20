resource "openstack_networking_port_v2" "port_1_public" {
  name       = "port_1_public"
  network_id = selectel_vpc_subnet_v2.subnet_2.network_id

  fixed_ip {
    subnet_id = selectel_vpc_subnet_v2.subnet_2.subnet_id
  }
}
resource "openstack_networking_port_v2" "port_2_public" {
  name       = "port_2_public"
  network_id = selectel_vpc_subnet_v2.subnet_2.network_id

  fixed_ip {
    subnet_id = selectel_vpc_subnet_v2.subnet_2.subnet_id
  }
}
resource "openstack_networking_port_v2" "port_3_public" {
  name       = "port_3_public"
  network_id = selectel_vpc_subnet_v2.subnet_2.network_id

  fixed_ip {
    subnet_id = selectel_vpc_subnet_v2.subnet_2.subnet_id
  }
}
