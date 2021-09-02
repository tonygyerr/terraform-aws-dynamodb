module "dynamodb_table" {
  source = "git::ssh://git@github.com:tonygyerr/terraform-aws-dynamodb.git"
  dynamodb_table_name = var.dynamodb_table_name
  namespace  = var.namespace
  delimiter  = var.delimiter
  attributes = var.attributes
  enabled    = var.enable_autoscaler
  tags       = var.tags
  hash_key = var.hash_key
  region   = var.region
}

