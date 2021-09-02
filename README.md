## Module Dynamodb 
```hcl
module "dynamodb_table" {
  source = "git::ssh://git@github.com/tonygyerr/terraform-aws-dynamodb.git
  #name               = var.name
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
```
## Prerequisites
- Docker (for using Docker Image of dependencies)
- Git
- Terraform
- AWS Key pair for Terraform provisioning.
- AWS S3 bucket for remote terraform state file (tfstate)
- AWS Dynamo Database for tfstate table state lock 

## How to run this Module using Terraform Commands
```bash
cd examples
terraform get
terraform init -backend-config ../backend-config/dev.tfvars
terraform plan -var-file="../env-config/dev.tfvars"
terraform apply -var-file="../env-config/dev.tfvars" -auto-approve
terraform destroy -var-file="../env-config/dev.tfvars"
```

## Requirements

| Name | Version |
|------|---------|
| aws | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |
| null | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| attribute | n/a | `list` | `[]` | no |
| attributes | Additional attributes (e.g. `policy` or `role`) | `list` | `[]` | no |
| autoscale\_max\_read\_capacity | DynamoDB autoscaling max read capacity | `number` | `20` | no |
| autoscale\_max\_write\_capacity | DynamoDB autoscaling max write capacity | `number` | `20` | no |
| autoscale\_min\_read\_capacity | DynamoDB autoscaling min read capacity | `number` | `5` | no |
| autoscale\_min\_write\_capacity | DynamoDB autoscaling min write capacity | `number` | `5` | no |
| autoscale\_read\_target | The target value (in %) for DynamoDB read autoscaling | `number` | `50` | no |
| autoscale\_write\_target | The target value (in %) for DynamoDB write autoscaling | `number` | `50` | no |
| aws\_region | ec2 region for the vpc | `string` | `"us-east-1"` | no |
| cost\_center | n/a | `string` | `"N/A"` | no |
| delimiter | Delimiter to be used between `namespace`, `stage`, `name`, and `attributes` | `string` | `"-"` | no |
| dynamodb\_attributes | Additional DynamoDB attributes in the form of a list of mapped values | `list` | `[]` | no |
| dynamodb\_indexes | n/a | `string` | `""` | no |
| dynamodb\_table\_name | n/a | `string` | `""` | no |
| enable\_autoscaler | Flag to enable/disable DynamoDB autoscaling | `string` | `"true"` | no |
| enable\_encryption | Enable DynamoDB server-side encryption | `string` | `"true"` | no |
| enable\_point\_in\_time\_recovery | Enable DynamoDB point in time recovery | `string` | `"true"` | no |
| enable\_streams | Enable DynamoDB streams | `string` | `"false"` | no |
| enabled | n/a | `string` | n/a | yes |
| global\_secondary\_index\_map | Additional global secondary indexes in the form of a list of mapped values | `list` | `[]` | no |
| hash\_key | DynamoDB table Hash Key | `string` | n/a | yes |
| hash\_key\_type | Hash Key type, which must be a scalar type: `S`, `N`, or `B` for (S)tring, (N)umber or (B)inary data | `string` | `"S"` | no |
| label\_id | n/a | `string` | `""` | no |
| local\_secondary\_index\_map | Additional local secondary indexes in the form of a list of mapped values | `list` | `[]` | no |
| namespace | Namespace (e.g. `eg` or `cp`) | `string` | `""` | no |
| owner | n/a | `string` | `"user@emailaddress.com"` | no |
| range\_key | DynamoDB table Range Key | `string` | `""` | no |
| range\_key\_type | Range Key type, which must be a scalar type: `S`, `N`, or `B` for (S)tring, (N)umber or (B)inary data | `string` | `"S"` | no |
| region | n/a | `string` | `""` | no |
| stream\_view\_type | When an item in the table is modified, what information is written to the stream | `string` | `""` | no |
| tags | optional default tags | `map` | `{}` | no |
| ttl\_attribute | DynamoDB table TTL attribute | `string` | `"Expires"` | no |

## Outputs

| Name | Description |
|------|-------------|
| dynamodb\_global\_secondary\_index\_names | DynamoDB secondary index names |
| dynamodb\_indexes | global index trigger name |
| dynamodb\_local\_secondary\_index\_names | DynamoDB local index names |
| dynamodb\_table\_arn | DynamoDB table ARN |
| dynamodb\_table\_id | DynamoDB table ID |
| dynamodb\_table\_name | DynamoDB table name |
| dynamodb\_table\_stream\_arn | DynamoDB table stream ARN |

## Contributors to this project
- name: "Gyepi-Garbrah, Ekow (Tony) <a.gyepigarbrah@gmail.com>"