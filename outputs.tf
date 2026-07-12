output "cdn_frontdoor_rule_sets_cdn_frontdoor_profile_id" {
  description = "Map of cdn_frontdoor_profile_id values across all cdn_frontdoor_rule_sets, keyed the same as var.cdn_frontdoor_rule_sets"
  value       = { for k, v in azurerm_cdn_frontdoor_rule_set.cdn_frontdoor_rule_sets : k => v.cdn_frontdoor_profile_id }
}
output "cdn_frontdoor_rule_sets_name" {
  description = "Map of name values across all cdn_frontdoor_rule_sets, keyed the same as var.cdn_frontdoor_rule_sets"
  value       = { for k, v in azurerm_cdn_frontdoor_rule_set.cdn_frontdoor_rule_sets : k => v.name }
}

