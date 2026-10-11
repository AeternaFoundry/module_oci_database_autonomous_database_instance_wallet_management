variable "database_autonomous_database_instance_wallet_managements" {
  description = <<EOT
Map of database_autonomous_database_instance_wallet_managements, attributes below
Required:
    - autonomous_database_id
Optional:
    - grace_period
    - should_rotate
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    autonomous_database_id = string
    grace_period           = optional(number)
    should_rotate          = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

