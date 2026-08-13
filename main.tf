resource "aws_glue_partition_index" "glue_partition_indices" {
  for_each = var.glue_partition_indices

  database_name = each.value.database_name
  table_name    = each.value.table_name
  catalog_id    = each.value.catalog_id
  region        = each.value.region

  partition_index {
    index_name = each.value.partition_index.index_name
    keys       = each.value.partition_index.keys
  }
}

