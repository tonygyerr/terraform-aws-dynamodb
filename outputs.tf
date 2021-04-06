output "dynamodb_table_name" {
  value       = "${aws_dynamodb_table.default.name}"
  description = "DynamoDB table name"
}

output "dynamodb_table_id" {
  value       = "${aws_dynamodb_table.default.id}"
  description = "DynamoDB table ID"
}

output "dynamodb_table_arn" {
  value       = "${aws_dynamodb_table.default.arn}"
  description = "DynamoDB table ARN"
}

output "dynamodb_global_secondary_index_names" {
  value       = ["${null_resource.global_secondary_index_names.*.triggers.name}"]
  description = "DynamoDB secondary index names"
}

output "dynamodb_local_secondary_index_names" {
  value       = ["${null_resource.local_secondary_index_names.*.triggers.name}"]
  description = "DynamoDB local index names"
}

output "dynamodb_table_stream_arn" {
  value       = "${aws_dynamodb_table.default.stream_arn}"
  description = "DynamoDB table stream ARN"
}

output "dynamodb_indexes" {
  value       = ["${null_resource.global_secondary_index_names.*.triggers.name}"]
  description = "global index trigger name"
}
