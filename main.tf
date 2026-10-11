resource "elasticstack_apm_agent_configuration" "apm_agent_configurations" {
  for_each = var.apm_agent_configurations

  service_name        = each.value.service_name
  settings            = each.value.settings
  agent_name          = each.value.agent_name
  service_environment = each.value.service_environment

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

