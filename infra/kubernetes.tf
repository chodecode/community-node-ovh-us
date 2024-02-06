locals {
  service_name = "XXX_OVH_PROJECT_ID_XXX"
}

resource "ovh_cloud_project_kube" "services" {
  service_name = local.service_name
  name         = "XXX_OVH_PROJECT_NAME_XXX"
  region       = "XXX_OVH_PROJECT_REGION_XXX"
}

resource "ovh_cloud_project_kube_nodepool" "services" {
  service_name  = local.service_name
  kube_id       = ovh_cloud_project_kube.services.id
  name          = "main"
  flavor_name   = "r2-15"
  desired_nodes = 1
  max_nodes     = 2
  min_nodes     = 0
}