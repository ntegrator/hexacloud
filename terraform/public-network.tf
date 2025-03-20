resource "selectel_vpc_subnet_v2" "subnet_2" {
  project_id    = selectel_vpc_project_v2.project_1.id
  region        = "ru-7"
  ip_version    = "ipv4"
  prefix_length = 29
}
