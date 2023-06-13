data "aws_vpc" "vpc_data_default" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet" {
  vpc_id     = data.aws_vpc.vpc_data_default.id
  cidr_block = "10.0.10.0/24"

  tags = {
    "Name" = "subnet-terraform"
  }
}