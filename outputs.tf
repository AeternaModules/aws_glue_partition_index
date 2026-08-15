output "glue_partition_indices_id" {
  description = "Map of id values across all glue_partition_indices, keyed the same as var.glue_partition_indices"
  value       = { for k, v in aws_glue_partition_index.glue_partition_indices : k => v.id if v.id != null && length(v.id) > 0 }
}
output "glue_partition_indices_catalog_id" {
  description = "Map of catalog_id values across all glue_partition_indices, keyed the same as var.glue_partition_indices"
  value       = { for k, v in aws_glue_partition_index.glue_partition_indices : k => v.catalog_id if v.catalog_id != null && length(v.catalog_id) > 0 }
}
output "glue_partition_indices_database_name" {
  description = "Map of database_name values across all glue_partition_indices, keyed the same as var.glue_partition_indices"
  value       = { for k, v in aws_glue_partition_index.glue_partition_indices : k => v.database_name if v.database_name != null && length(v.database_name) > 0 }
}
output "glue_partition_indices_partition_index" {
  description = "Map of partition_index values across all glue_partition_indices, keyed the same as var.glue_partition_indices"
  value       = { for k, v in aws_glue_partition_index.glue_partition_indices : k => one(v.partition_index) if v.partition_index != null && length(v.partition_index) > 0 }
}
output "glue_partition_indices_region" {
  description = "Map of region values across all glue_partition_indices, keyed the same as var.glue_partition_indices"
  value       = { for k, v in aws_glue_partition_index.glue_partition_indices : k => v.region if v.region != null && length(v.region) > 0 }
}
output "glue_partition_indices_table_name" {
  description = "Map of table_name values across all glue_partition_indices, keyed the same as var.glue_partition_indices"
  value       = { for k, v in aws_glue_partition_index.glue_partition_indices : k => v.table_name if v.table_name != null && length(v.table_name) > 0 }
}

