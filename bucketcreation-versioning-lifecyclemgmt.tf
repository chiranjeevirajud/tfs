provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "mynewbucket" {
    bucket = "us-east-1-bucket"
    acl = "private"
    versioning {
        enabled = true
    }

    lifecycle_rule {
        enabled = true

        transition {
            days = 30
            storage_class = "STANDARD_IA"
        }

        transition {
            days = 60
            storage_class = "GLACIER"
        }

        tags = {
            Name = "news3bucket-us-east-1"
        }
    }

}