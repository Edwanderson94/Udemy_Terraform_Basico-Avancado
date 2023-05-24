resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file(var.aws_pub_key)
}

resource "aws_instance" "vm" {
  ami                         = "ami-04473c3d3be6a927f"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id # Utilizando o data source do bucket s3 da VPC 
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  tags = {
    "Name" = "vm-terraform"
  }
}