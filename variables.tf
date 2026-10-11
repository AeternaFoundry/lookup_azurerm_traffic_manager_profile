variable "traffic_manager_profile_lookup" {
  description = <<EOT
Map of traffic_manager_profile_lookup, attributes below
Required:
    - name
    - resource_group_name
Optional:
    - tags
    - traffic_view_enabled
EOT

  type = map(object({
    name                 = string
    resource_group_name  = string
    tags                 = optional(map(string))
    traffic_view_enabled = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.traffic_manager_profile_lookup : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.traffic_manager_profile_lookup : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.traffic_manager_profile_lookup : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.traffic_manager_profile_lookup : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.traffic_manager_profile_lookup : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

