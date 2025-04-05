// crear un nuevo bucket de s3
resource "aws_s3_bucket" "my_bucket" {
  // el nombre del bucket va a ser el nombre de la variable bucket_name
  // que se define en el archivo variables.tf
  // y se obtiene del archivo terraform.tfvars
  bucket = var.bucket_name

  // se habilita el versionamiento del bucket
  versioning {
    enabled = true
  }

  // acl es access control list
  // private es privado
  // public-read es público
  acl        = "private"
  force_destroy = true
  
}
