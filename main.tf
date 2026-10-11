data "azurerm_traffic_manager_profile" "traffic_manager_profile_lookup" {
  for_each = var.traffic_manager_profile_lookup

  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  tags                 = each.value.tags
  traffic_view_enabled = each.value.traffic_view_enabled
}

