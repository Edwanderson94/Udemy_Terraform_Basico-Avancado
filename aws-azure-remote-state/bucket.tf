resource "aws_s3_bucket" "edevops-95175362486" {
  bucket = "edwanderson-remote-state-aws-az"

  versioning {
    enabled = true
  }
}