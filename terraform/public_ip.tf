resource "openstack_networking_floatingip_v2" "floatingip_1" {
  pool = "external-network"
}
resource "openstack_networking_floatingip_associate_v2" "association_1" {
  port_id     = openstack_networking_port_v2.port_4.id
  floating_ip = openstack_networking_floatingip_v2.floatingip_1.address
}
