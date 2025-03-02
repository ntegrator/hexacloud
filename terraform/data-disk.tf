resource "openstack_blockstorage_volume_v3" "data_volume_1" {
  name                 = "additional-volume-for-server-1"
  size                 = "50"
  volume_type          = "universal.ru-7a"
  availability_zone    = "ru-7a"
  enable_online_resize = true
}
resource "openstack_blockstorage_volume_v3" "data_volume_2" {
  name                 = "additional-volume-for-server-2"
  size                 = "50"
  volume_type          = "universal.ru-7a"
  availability_zone    = "ru-7a"
  enable_online_resize = true
}
resource "openstack_blockstorage_volume_v3" "data_volume_3" {
  name                 = "additional-volume-for-server-3"
  size                 = "50"
  volume_type          = "universal.ru-7a"
  availability_zone    = "ru-7a"
  enable_online_resize = true
}
