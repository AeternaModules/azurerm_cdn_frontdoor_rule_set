variable "cdn_frontdoor_rule_sets" {
  description = <<EOT
Map of cdn_frontdoor_rule_sets, attributes below
Required:
    - cdn_frontdoor_profile_id
    - name
EOT

  type = map(object({
    cdn_frontdoor_profile_id = string
    name                     = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_cdn_frontdoor_rule_set's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.FrontDoorRuleSetName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: cdn_frontdoor_profile_id
  #   source:    [from validate.FrontDoorProfileID] !ok
  # path: cdn_frontdoor_profile_id
  #   source:    [from validate.FrontDoorProfileID] err != nil
}

