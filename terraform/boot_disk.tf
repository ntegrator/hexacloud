resource "openstack_blockstorage_volume_v3" "boot_volume_1" {
  name                 = "boot-volume-for-server_1"
  size                 = "40"
  image_id             = data.openstack_images_image_v2.image_1.id
  volume_type          = "fast.ru-7a"
  availability_zone    = "ru-7a"
  enable_online_resize = true

  lifecycle {
    ignore_changes = [image_id]
  }

}
resource "openstack_blockstorage_volume_v3" "boot_volume_2" {
  name                 = "boot-volume-for-server_2"
  size                 = "40"
  image_id             = data.openstack_images_image_v2.image_1.id
  volume_type          = "fast.ru-7a"
  availability_zone    = "ru-7a"
  enable_online_resize = true

  lifecycle {
    ignore_changes = [image_id]
  }

}
resource "openstack_blockstorage_volume_v3" "boot_volume_3" {
  name                 = "boot-volume-for-server_3"
  size                 = "40"
  image_id             = data.openstack_images_image_v2.image_1.id
  volume_type          = "fast.ru-7a"
  availability_zone    = "ru-7a"
  enable_online_resize = true

  lifecycle {
    ignore_changes = [image_id]
  }

}
resource "openstack_blockstorage_volume_v3" "boot_volume_4" {
  name                 = "boot-volume-for-server_4"
  size                 = "40"
  image_id             = data.openstack_images_image_v2.image_1.id
  volume_type          = "fast.ru-7a"
  availability_zone    = "ru-7a"
  enable_online_resize = true

}
