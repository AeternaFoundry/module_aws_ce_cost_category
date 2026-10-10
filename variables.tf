variable "ce_cost_categories" {
  description = <<EOT
Map of ce_cost_categories, attributes below
Required:
    - name
    - rule_version
    - rule (block):
        - inherited_value (optional, block):
            - dimension_key (optional)
            - dimension_name (optional)
        - rule (optional, block):
            - and (optional, block):
                - and (optional, block):
                    - cost_category (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - dimension (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - tags (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                - cost_category (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - dimension (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - not (optional, block):
                    - cost_category (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - dimension (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - tags (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                - or (optional, block):
                    - cost_category (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - dimension (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - tags (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                - tags (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
            - cost_category (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
            - dimension (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
            - not (optional, block):
                - and (optional, block):
                    - cost_category (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - dimension (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - tags (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                - cost_category (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - dimension (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - not (optional, block):
                    - cost_category (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - dimension (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - tags (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                - or (optional, block):
                    - cost_category (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - dimension (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - tags (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                - tags (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
            - or (optional, block):
                - and (optional, block):
                    - cost_category (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - dimension (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - tags (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                - cost_category (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - dimension (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - not (optional, block):
                    - cost_category (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - dimension (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - tags (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                - or (optional, block):
                    - cost_category (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - dimension (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                    - tags (optional, block):
                        - key (optional)
                        - match_options (optional)
                        - values (optional)
                - tags (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
            - tags (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
        - type (optional)
        - value (optional)
Optional:
    - default_value
    - effective_start
    - tags
    - tags_all
    - split_charge_rule (block):
        - method (required)
        - parameter (optional, block):
            - type (optional)
            - values (optional)
        - source (required)
        - targets (required)
EOT

  type = map(object({
    name            = string
    rule_version    = string
    default_value   = optional(string)
    effective_start = optional(string)
    tags            = optional(map(string))
    tags_all        = optional(map(string))
    rule = list(object({
      inherited_value = optional(object({
        dimension_key  = optional(string)
        dimension_name = optional(string)
      }))
      rule = optional(object({
        and = optional(list(object({
          and = optional(list(object({
            cost_category = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            dimension = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            tags = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
          })))
          cost_category = optional(object({
            key           = optional(string)
            match_options = optional(set(string))
            values        = optional(set(string))
          }))
          dimension = optional(object({
            key           = optional(string)
            match_options = optional(set(string))
            values        = optional(set(string))
          }))
          not = optional(object({
            cost_category = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            dimension = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            tags = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
          }))
          or = optional(list(object({
            cost_category = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            dimension = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            tags = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
          })))
          tags = optional(object({
            key           = optional(string)
            match_options = optional(set(string))
            values        = optional(set(string))
          }))
        })))
        cost_category = optional(object({
          key           = optional(string)
          match_options = optional(set(string))
          values        = optional(set(string))
        }))
        dimension = optional(object({
          key           = optional(string)
          match_options = optional(set(string))
          values        = optional(set(string))
        }))
        not = optional(object({
          and = optional(list(object({
            cost_category = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            dimension = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            tags = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
          })))
          cost_category = optional(object({
            key           = optional(string)
            match_options = optional(set(string))
            values        = optional(set(string))
          }))
          dimension = optional(object({
            key           = optional(string)
            match_options = optional(set(string))
            values        = optional(set(string))
          }))
          not = optional(object({
            cost_category = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            dimension = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            tags = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
          }))
          or = optional(list(object({
            cost_category = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            dimension = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            tags = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
          })))
          tags = optional(object({
            key           = optional(string)
            match_options = optional(set(string))
            values        = optional(set(string))
          }))
        }))
        or = optional(list(object({
          and = optional(list(object({
            cost_category = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            dimension = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            tags = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
          })))
          cost_category = optional(object({
            key           = optional(string)
            match_options = optional(set(string))
            values        = optional(set(string))
          }))
          dimension = optional(object({
            key           = optional(string)
            match_options = optional(set(string))
            values        = optional(set(string))
          }))
          not = optional(object({
            cost_category = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            dimension = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            tags = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
          }))
          or = optional(list(object({
            cost_category = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            dimension = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
            tags = optional(object({
              key           = optional(string)
              match_options = optional(set(string))
              values        = optional(set(string))
            }))
          })))
          tags = optional(object({
            key           = optional(string)
            match_options = optional(set(string))
            values        = optional(set(string))
          }))
        })))
        tags = optional(object({
          key           = optional(string)
          match_options = optional(set(string))
          values        = optional(set(string))
        }))
      }))
      type  = optional(string)
      value = optional(string)
    }))
    split_charge_rule = optional(list(object({
      method = string
      parameter = optional(list(object({
        type   = optional(string)
        values = optional(list(string))
      })))
      source  = string
      targets = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ce_cost_categories : (
        length(v.rule) >= 1
      )
    ])
    error_message = "Each rule list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ce_cost_categories : (
        length(v.rule_version) >= 0 && length(v.rule_version) <= 100
      )
    ])
    error_message = "must be between 0 and 100 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.ce_cost_categories : (
        v.split_charge_rule == null || alltrue([for item in v.split_charge_rule : (alltrue([for x in item.targets : length(x) >= 0 && length(x) <= 1024]))])
      )
    ])
    error_message = "must be between 0 and 1024 characters"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

