output "traffic_manager_profile_lookup_id" {
  description = "Map of id values across all traffic_manager_profile_lookup, keyed the same as var.traffic_manager_profile_lookup"
  value       = { for k, v in data.azurerm_traffic_manager_profile.traffic_manager_profile_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "traffic_manager_profile_lookup_dns_config" {
  description = "Map of dns_config values across all traffic_manager_profile_lookup, keyed the same as var.traffic_manager_profile_lookup"
  value       = { for k, v in data.azurerm_traffic_manager_profile.traffic_manager_profile_lookup : k => v.dns_config if v.dns_config != null && length(v.dns_config) > 0 }
}
output "traffic_manager_profile_lookup_fqdn" {
  description = "Map of fqdn values across all traffic_manager_profile_lookup, keyed the same as var.traffic_manager_profile_lookup"
  value       = { for k, v in data.azurerm_traffic_manager_profile.traffic_manager_profile_lookup : k => v.fqdn if v.fqdn != null && length(v.fqdn) > 0 }
}
output "traffic_manager_profile_lookup_monitor_config" {
  description = "Map of monitor_config values across all traffic_manager_profile_lookup, keyed the same as var.traffic_manager_profile_lookup"
  value       = { for k, v in data.azurerm_traffic_manager_profile.traffic_manager_profile_lookup : k => v.monitor_config if v.monitor_config != null && length(v.monitor_config) > 0 }
}
output "traffic_manager_profile_lookup_name" {
  description = "Map of name values across all traffic_manager_profile_lookup, keyed the same as var.traffic_manager_profile_lookup"
  value       = { for k, v in data.azurerm_traffic_manager_profile.traffic_manager_profile_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "traffic_manager_profile_lookup_profile_status" {
  description = "Map of profile_status values across all traffic_manager_profile_lookup, keyed the same as var.traffic_manager_profile_lookup"
  value       = { for k, v in data.azurerm_traffic_manager_profile.traffic_manager_profile_lookup : k => v.profile_status if v.profile_status != null && length(v.profile_status) > 0 }
}
output "traffic_manager_profile_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all traffic_manager_profile_lookup, keyed the same as var.traffic_manager_profile_lookup"
  value       = { for k, v in data.azurerm_traffic_manager_profile.traffic_manager_profile_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "traffic_manager_profile_lookup_tags" {
  description = "Map of tags values across all traffic_manager_profile_lookup, keyed the same as var.traffic_manager_profile_lookup"
  value       = { for k, v in data.azurerm_traffic_manager_profile.traffic_manager_profile_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "traffic_manager_profile_lookup_traffic_routing_method" {
  description = "Map of traffic_routing_method values across all traffic_manager_profile_lookup, keyed the same as var.traffic_manager_profile_lookup"
  value       = { for k, v in data.azurerm_traffic_manager_profile.traffic_manager_profile_lookup : k => v.traffic_routing_method if v.traffic_routing_method != null && length(v.traffic_routing_method) > 0 }
}
output "traffic_manager_profile_lookup_traffic_view_enabled" {
  description = "Map of traffic_view_enabled values across all traffic_manager_profile_lookup, keyed the same as var.traffic_manager_profile_lookup"
  value       = { for k, v in data.azurerm_traffic_manager_profile.traffic_manager_profile_lookup : k => v.traffic_view_enabled if v.traffic_view_enabled != null }
}

