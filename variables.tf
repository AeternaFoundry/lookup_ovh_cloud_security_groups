variable "cloud_security_groups_lookup" {
  description = <<EOT
Map of cloud_security_groups_lookup, attributes below
Required:
    - service_name
EOT

  type = map(object({
    service_name = string
  }))
}

