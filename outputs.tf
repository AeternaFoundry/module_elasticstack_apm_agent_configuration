output "apm_agent_configurations_id" {
  description = "Map of id values across all apm_agent_configurations, keyed the same as var.apm_agent_configurations except keys with no id are omitted"
  value       = { for k, v in elasticstack_apm_agent_configuration.apm_agent_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apm_agent_configurations_agent_name" {
  description = "Map of agent_name values across all apm_agent_configurations, keyed the same as var.apm_agent_configurations except keys with no agent_name are omitted"
  value       = { for k, v in elasticstack_apm_agent_configuration.apm_agent_configurations : k => v.agent_name if v.agent_name != null && length(v.agent_name) > 0 }
}
output "apm_agent_configurations_kibana_connection" {
  description = "Map of kibana_connection values across all apm_agent_configurations, keyed the same as var.apm_agent_configurations except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_apm_agent_configuration.apm_agent_configurations : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "apm_agent_configurations_service_environment" {
  description = "Map of service_environment values across all apm_agent_configurations, keyed the same as var.apm_agent_configurations except keys with no service_environment are omitted"
  value       = { for k, v in elasticstack_apm_agent_configuration.apm_agent_configurations : k => v.service_environment if v.service_environment != null && length(v.service_environment) > 0 }
}
output "apm_agent_configurations_service_name" {
  description = "Map of service_name values across all apm_agent_configurations, keyed the same as var.apm_agent_configurations except keys with no service_name are omitted"
  value       = { for k, v in elasticstack_apm_agent_configuration.apm_agent_configurations : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "apm_agent_configurations_settings" {
  description = "Map of settings values across all apm_agent_configurations, keyed the same as var.apm_agent_configurations except keys with no settings are omitted"
  value       = { for k, v in elasticstack_apm_agent_configuration.apm_agent_configurations : k => v.settings if v.settings != null && length(v.settings) > 0 }
}

