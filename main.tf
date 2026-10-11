data "ovh_cloud_security_groups" "cloud_security_groups_lookup" {
  for_each = var.cloud_security_groups_lookup

  service_name = each.value.service_name
}

