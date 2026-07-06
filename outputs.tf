output "cdn_frontdoor_rule_sets" {
  description = "All cdn_frontdoor_rule_set resources"
  value       = azurerm_cdn_frontdoor_rule_set.cdn_frontdoor_rule_sets
}
output "cdn_frontdoor_rule_sets_cdn_frontdoor_profile_id" {
  description = "List of cdn_frontdoor_profile_id values across all cdn_frontdoor_rule_sets"
  value       = [for k, v in azurerm_cdn_frontdoor_rule_set.cdn_frontdoor_rule_sets : v.cdn_frontdoor_profile_id]
}
output "cdn_frontdoor_rule_sets_name" {
  description = "List of name values across all cdn_frontdoor_rule_sets"
  value       = [for k, v in azurerm_cdn_frontdoor_rule_set.cdn_frontdoor_rule_sets : v.name]
}

