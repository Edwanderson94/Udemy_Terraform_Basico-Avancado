#######################################################################
# AWS - BUCKET S3
# RECURSO DE VERSIONAMENTO
#######################################################################
resource "aws_s3_bucket" "edevops-95175362486" {
  bucket = "edwanderson-remote-state-aws-az" # Buckets devem ter nomes únicos, são recursos globais.

  resource "aws_s3_bucket_versioning" "versioning" {
    bucket = aws_s3_bucket.edevops.id
    versioning_configuration {
      status = "Enabled"
    }
  }
}