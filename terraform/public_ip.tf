resource "openstack_networking_floatingip_v2" "floatingip_1" {
  pool = "external-network"
}
resource "openstack_networking_floatingip_v2" "floatingip_2" {
  pool = "external-network"
}
resource "openstack_networking_floatingip_v2" "floatingip_3" {
  pool = "external-network"
}
