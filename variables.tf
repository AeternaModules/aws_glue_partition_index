variable "glue_partition_indices" {
  description = <<EOT
Map of glue_partition_indices, attributes below
Required:
    - database_name
    - table_name
    - partition_index (block):
        - index_name (optional)
        - keys (optional)
Optional:
    - catalog_id
    - region
EOT

  type = map(object({
    database_name = string
    table_name    = string
    catalog_id    = optional(string)
    region        = optional(string)
    partition_index = object({
      index_name = optional(string)
      keys       = optional(list(string))
    })
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

