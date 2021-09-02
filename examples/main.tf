module "dynamodb_table" {
  source = "git::ssh://git@github.com:tonygyerr/terraform-aws-dynamodb.git"
  #name               = var.name
  dynamodb_table_name = var.dynamodb_table_name
  namespace  = var.namespace
  delimiter  = var.delimiter
  attributes = var.attributes
  enabled    = var.enable_autoscaler
  tags       = var.tags
  #dynamodb_table_arn = module.dynamodb_table.dynamodb_table_arn
  #dynamodb_indexes   = [module.dynamodb_table.dynamodb_indexes]
  hash_key = var.hash_key
  region   = var.region
}

