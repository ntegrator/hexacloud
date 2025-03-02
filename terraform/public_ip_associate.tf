resource "openstack_networking_floatingip_associate_v2" "association_1" {
  port_id     = openstack_networking_port_v2.port_1.id
  floating_ip = openstack_networking_floatingip_v2.floatingip_1.address
}
resource "openstack_networking_floatingip_associate_v2" "association_2" {
  port_id     = openstack_networking_port_v2.port_2.id
  floating_ip = openstack_networking_floatingip_v2.floatingip_2.address
}
resource "openstack_networking_floatingip_associate_v2" "association_3" {
  port_id     = openstack_networking_port_v2.port_3.id
  floating_ip = openstack_networking_floatingip_v2.floatingip_3.address
}