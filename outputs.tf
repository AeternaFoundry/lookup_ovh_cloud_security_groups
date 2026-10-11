output "cloud_security_groups_lookup_security_groups" {
  description = "Map of security_groups values across all cloud_security_groups_lookup, keyed the same as var.cloud_security_groups_lookup except keys with no security_groups are omitted"
  value       = { for k, v in data.ovh_cloud_security_groups.cloud_security_groups_lookup : k => v.security_groups if v.security_groups != null && length(v.security_groups) > 0 }
}
output "cloud_security_groups_lookup_service_name" {
  description = "Map of service_name values across all cloud_security_groups_lookup, keyed the same as var.cloud_security_groups_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_security_groups.cloud_security_groups_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

