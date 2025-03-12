resource "openstack_compute_instance_v2" "multinode-selectel-ru7a-01" {
  name              = "multinode-selectel-ru7a-01"
  flavor_id         = "1035"
  key_pair          = selectel_vpc_keypair_v2.keypair_1.name
  availability_zone = "ru-7a"

  network {
    port = openstack_networking_port_v2.port_1.id
  }
  network {
    port = openstack_networking_port_v2.port_1_ext.id
  }

  lifecycle {
    ignore_changes = [image_id]
  }

  block_device {
    uuid             = openstack_blockstorage_volume_v3.boot_volume_1.id
    source_type      = "volume"
    destination_type = "volume"
    boot_index       = 0
  }

#  block_device {
#    uuid             = openstack_blockstorage_volume_v3.data_volume_1.id
#    source_type      = "volume"
#    destination_type = "volume"
#    boot_index       = -1
#  }

  vendor_options {
    ignore_resize_confirmation = true
  }
}
resource "openstack_compute_instance_v2" "multinode-selectel-ru7a-02" {
  name              = "multinode-selectel-ru7a-02"
  flavor_id         = "1035"
  key_pair          = selectel_vpc_keypair_v2.keypair_1.name
  availability_zone = "ru-7a"

  network {
    port = openstack_networking_port_v2.port_2.id
  }
  network {
    port = openstack_networking_port_v2.port_2_ext.id
  }

  lifecycle {
    ignore_changes = [image_id]
  }

  block_device {
    uuid             = openstack_blockstorage_volume_v3.boot_volume_2.id
    source_type      = "volume"
    destination_type = "volume"
    boot_index       = 0
  }

#  block_device {
#    uuid             = openstack_blockstorage_volume_v3.data_volume_2.id
#    source_type      = "volume"
#    destination_type = "volume"
#    boot_index       = -1
#  }

  vendor_options {
    ignore_resize_confirmation = true
  }
}
resource "openstack_compute_instance_v2" "multinode-selectel-ru7a-03" {
  name              = "multinode-selectel-ru7a-03"
  flavor_id         = "1035"
  key_pair          = selectel_vpc_keypair_v2.keypair_1.name
  availability_zone = "ru-7a"

  network {
    port = openstack_networking_port_v2.port_3.id
  }
  network {
    port = openstack_networking_port_v2.port_3_ext.id
  }

  lifecycle {
    ignore_changes = [image_id]
  }

  block_device {
    uuid             = openstack_blockstorage_volume_v3.boot_volume_3.id
    source_type      = "volume"
    destination_type = "volume"
    boot_index       = 0
  }

#  block_device {
#    uuid             = openstack_blockstorage_volume_v3.data_volume_3.id
#    source_type      = "volume"
#    destination_type = "volume"
#    boot_index       = -1
#  }

  vendor_options {
    ignore_resize_confirmation = true
  }
}
resource "openstack_compute_instance_v2" "bootstrap-selectel-ru7a-01" {
  name              = "bootstrap-selectel-ru7a-01"
  flavor_id         = "1035"
  key_pair          = selectel_vpc_keypair_v2.keypair_1.name
  availability_zone = "ru-7a"

  network {
    port = openstack_networking_port_v2.port_4.id
  }
  network {
    port = openstack_networking_port_v2.port_4_ext.id
  }


  block_device {
    uuid             = openstack_blockstorage_volume_v3.boot_volume_4.id
    source_type      = "volume"
    destination_type = "volume"
    boot_index       = 0
  }

  vendor_options {
    ignore_resize_confirmation = true
  }
}
