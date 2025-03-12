data "openstack_images_image_v2" "image_1" {
  name        = "Rocky Linux 9 64-bit"
  most_recent = true
  visibility  = "public"
}
data "openstack_images_image_v2" "image_2" {
  name        = "Ubuntu 22.04 LTS 64-bit"
  most_recent = true
  visibility  = "public"
}