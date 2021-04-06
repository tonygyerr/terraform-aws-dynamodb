resource "aws_dynamodb_table" "default" {
  name           = "cv-servicedynamodb"
  read_capacity  = var.autoscale_min_read_capacity
  write_capacity = var.autoscale_min_write_capacity
  hash_key       = var.hash_key

  stream_enabled   = var.enable_streams
  stream_view_type = var.enable_streams ? var.stream_view_type : ""

  server_side_encryption {
    enabled = var.enable_encryption
  }

  point_in_time_recovery {
    enabled = var.enable_point_in_time_recovery
  }

  lifecycle {
    ignore_changes = [read_capacity, write_capacity]
  }

  # attribute {
  #   name = var.range_key
  #   type = var.range_key_type
  # }

  attribute {
    name = var.hash_key
    type = var.hash_key_type
  }

  # attribute {
  #   name = "Attribute1"
  #   type = "S"
  # }

  ttl {
    attribute_name = var.ttl_attribute
    enabled        = true
  }
  tags = var.tags
}