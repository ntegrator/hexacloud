resource "selectel_iam_serviceuser_v1" "serviceuser_1" {
  name         = "serviceuser_1"
  password     = "88TJabaKdMqZkogyqwm7H9sz7+E"
  role {
    role_name  = "member"
    scope      = "project"
    project_id = selectel_vpc_project_v2.project_1.id 
  }
}