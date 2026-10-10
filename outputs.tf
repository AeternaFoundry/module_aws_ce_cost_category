output "ce_cost_categories_id" {
  description = "Map of id values across all ce_cost_categories, keyed the same as var.ce_cost_categories"
  value       = { for k, v in aws_ce_cost_category.ce_cost_categories : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ce_cost_categories_arn" {
  description = "Map of arn values across all ce_cost_categories, keyed the same as var.ce_cost_categories"
  value       = { for k, v in aws_ce_cost_category.ce_cost_categories : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ce_cost_categories_default_value" {
  description = "Map of default_value values across all ce_cost_categories, keyed the same as var.ce_cost_categories"
  value       = { for k, v in aws_ce_cost_category.ce_cost_categories : k => v.default_value if v.default_value != null && length(v.default_value) > 0 }
}
output "ce_cost_categories_effective_end" {
  description = "Map of effective_end values across all ce_cost_categories, keyed the same as var.ce_cost_categories"
  value       = { for k, v in aws_ce_cost_category.ce_cost_categories : k => v.effective_end if v.effective_end != null && length(v.effective_end) > 0 }
}
output "ce_cost_categories_effective_start" {
  description = "Map of effective_start values across all ce_cost_categories, keyed the same as var.ce_cost_categories"
  value       = { for k, v in aws_ce_cost_category.ce_cost_categories : k => v.effective_start if v.effective_start != null && length(v.effective_start) > 0 }
}
output "ce_cost_categories_name" {
  description = "Map of name values across all ce_cost_categories, keyed the same as var.ce_cost_categories"
  value       = { for k, v in aws_ce_cost_category.ce_cost_categories : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ce_cost_categories_rule" {
  description = "Map of rule values across all ce_cost_categories, keyed the same as var.ce_cost_categories"
  value       = { for k, v in aws_ce_cost_category.ce_cost_categories : k => v.rule if v.rule != null && length(v.rule) > 0 }
}
output "ce_cost_categories_rule_version" {
  description = "Map of rule_version values across all ce_cost_categories, keyed the same as var.ce_cost_categories"
  value       = { for k, v in aws_ce_cost_category.ce_cost_categories : k => v.rule_version if v.rule_version != null && length(v.rule_version) > 0 }
}
output "ce_cost_categories_split_charge_rule" {
  description = "Map of split_charge_rule values across all ce_cost_categories, keyed the same as var.ce_cost_categories"
  value       = { for k, v in aws_ce_cost_category.ce_cost_categories : k => v.split_charge_rule if v.split_charge_rule != null && length(v.split_charge_rule) > 0 }
}
output "ce_cost_categories_tags" {
  description = "Map of tags values across all ce_cost_categories, keyed the same as var.ce_cost_categories"
  value       = { for k, v in aws_ce_cost_category.ce_cost_categories : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ce_cost_categories_tags_all" {
  description = "Map of tags_all values across all ce_cost_categories, keyed the same as var.ce_cost_categories"
  value       = { for k, v in aws_ce_cost_category.ce_cost_categories : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

