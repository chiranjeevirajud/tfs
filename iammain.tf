provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "iamusers" {
    count = length(var.iamusers)
    name = var.iamusers[count.index]
}