resource "selectel_vpc_keypair_v2" "keypair_1" {
  name       = "keypair"
  public_key = file("~/.ssh/id_ed25519.pub")
  user_id    = selectel_iam_serviceuser_v1.serviceuser_1.id
}