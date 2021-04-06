output "dynamodb_table_name" {
  value       = "${module.dynamodb_table.dynamodb_table_name}"
  description = "DynamoDB table name"
}

output "dynamodb_table_id" {
  value       = "${module.dynamodb_table.dynamodb_table_id}"
  description = "DynamoDB table ID"
}

output "dynamodb_table_arn" {
  value       = "${module.dynamodb_table.dynamodb_table_arn}"
  description = "DynamoDB table ARN"
}

output "dynamodb_global_secondary_index_names" {
  value       = "${module.dynamodb_table.dynamodb_global_secondary_index_names}"
  description = "DynamoDB secondary index names"
}

output "dynamodb_table_stream_arn" {
  value       = "${module.dynamodb_table.dynamodb_table_stream_arn}"
  description = "DynamoDB table stream ARN"
}

output "dynamodb_indexes" {
  value = "${module.dynamodb_table.dynamodb_indexes}" #["${null_resource.global_secondary_index_names.*.triggers.name}"]
}
