variable "apm_agent_configurations" {
  description = <<EOT
Map of apm_agent_configurations, attributes below
Required:
    - service_name
    - settings
Optional:
    - agent_name
    - service_environment
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    service_name        = string
    settings            = map(string)
    agent_name          = optional(string)
    service_environment = optional(string)
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

