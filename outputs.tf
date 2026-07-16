output "cdn_frontdoor_rule_sets_id" {
  description = "Map of id values across all cdn_frontdoor_rule_sets, keyed the same as var.cdn_frontdoor_rule_sets"
  value       = { for k, v in azurerm_cdn_frontdoor_rule_set.cdn_frontdoor_rule_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cdn_frontdoor_rule_sets_cdn_frontdoor_profile_id" {
  description = "Map of cdn_frontdoor_profile_id values across all cdn_frontdoor_rule_sets, keyed the same as var.cdn_frontdoor_rule_sets"
  value       = { for k, v in azurerm_cdn_frontdoor_rule_set.cdn_frontdoor_rule_sets : k => v.cdn_frontdoor_profile_id if v.cdn_frontdoor_profile_id != null && length(v.cdn_frontdoor_profile_id) > 0 }
}
output "cdn_frontdoor_rule_sets_name" {
  description = "Map of name values across all cdn_frontdoor_rule_sets, keyed the same as var.cdn_frontdoor_rule_sets"
  value       = { for k, v in azurerm_cdn_frontdoor_rule_set.cdn_frontdoor_rule_sets : k => v.name if v.name != null && length(v.name) > 0 }
}

