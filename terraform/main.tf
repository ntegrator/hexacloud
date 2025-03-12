terraform {
  required_providers {
    selectel = {
      source  = "selectel/selectel"
      version = "~> 6.0.0"
    }
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "2.1.0"
    }
  }
}

provider "selectel" {
  domain_name = "411974"
  username    = "terraform-rus"
  password    = "s7DAAuC-"
  auth_region = "ru-7"
  auth_url = "https://cloud.api.selcloud.ru/identity/v3/"
}
provider "openstack" {
  auth_url    = "https://cloud.api.selcloud.ru/identity/v3"
  domain_name = "411974"
  tenant_id   = selectel_vpc_project_v2.project_1.id
  user_name   = selectel_iam_serviceuser_v1.serviceuser_1.name
  password    = selectel_iam_serviceuser_v1.serviceuser_1.password
  region      = "ru-7"
}

