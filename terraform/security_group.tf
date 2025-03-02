resource "openstack_networking_secgroup_v2" "general_security_group" {
  name        = "general_security_group"
  description = "General security group"
}

resource "openstack_networking_port_secgroup_associate_v2" "security_group_associate_1" {
    port_id            = openstack_networking_port_v2.port_1.id
    security_group_ids = [openstack_networking_secgroup_v2.general_security_group.id]
  }
resource "openstack_networking_port_secgroup_associate_v2" "security_group_associate_2" {
    port_id            = openstack_networking_port_v2.port_2.id
    security_group_ids = [openstack_networking_secgroup_v2.general_security_group.id]
  }
resource "openstack_networking_port_secgroup_associate_v2" "security_group_associate_3" {
    port_id            = openstack_networking_port_v2.port_3.id
    security_group_ids = [openstack_networking_secgroup_v2.general_security_group.id]
  }

###
### security group rules ###
###
resource "openstack_networking_secgroup_rule_v2" "security_group_rule_1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  remote_ip_prefix  = "192.168.233.0/24"
  security_group_id = openstack_networking_secgroup_v2.general_security_group.id
}
resource "openstack_networking_secgroup_rule_v2" "security_group_rule_2" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.general_security_group.id
}
