resource "aws_dynamodb_table" "this" {
  name         = var.table_name != "" ? var.table_name : "${var.env}-project-dynamo-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = var.hash_key

  attribute {
    name = var.hash_key
    type = "S"
  }

  tags = {
    Name        = var.table_name != "" ? var.table_name : "${var.env}-project-dynamo-table"
    Environment = var.env
  }
}
