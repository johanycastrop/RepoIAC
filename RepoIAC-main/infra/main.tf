// crear un nuevo bucket de s3
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  force_destroy = true
  
}
resource "aws_dynamodb_table" "my_table"{
  name = var.table_name
  hash_key = "LockID"
  write_capacity = 20
  read_capacity = 20
  attribute {
    name = "LockID"
    type = "S"
  }
}
