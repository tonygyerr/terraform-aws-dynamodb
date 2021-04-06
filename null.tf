resource "null_resource" "global_secondary_index_names" {
  count = length(var.global_secondary_index_map)

  # Convert the multi-item `global_secondary_index_map` into a simple `map` with just one item `name` since `triggers` does not support `lists` in `maps` (which are used in `non_key_attributes`)
  # See `examples/complete`
  # https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#non_key_attributes-1
  triggers = map("name", lookup(var.global_secondary_index_map[count.index], "name"))
}

resource "null_resource" "local_secondary_index_names" {
  count = length(var.local_secondary_index_map)

  # Convert the multi-item `local_secondary_index_map` into a simple `map` with just one item `name` since `triggers` does not support `lists` in `maps` (which are used in `non_key_attributes`)
  # See `examples/complete`
  # https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#non_key_attributes-1
  triggers = map("name", lookup(var.local_secondary_index_map[count.index], "name"))
}
