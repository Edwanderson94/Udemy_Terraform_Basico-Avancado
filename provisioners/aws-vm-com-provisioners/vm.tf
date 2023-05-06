#####################################################################################################################################################
# Udemy - Terraform do basico ao avançado
# Seção 6 - Provisioners - Criação de VM na AWS com Provisioners 
# Pré-Requisitos - Executar a criação da VPC (Pasta aws-vpc) e Executar a criação da VM com Remote State (pasta aws-vm-com-remote-state)
# Resumo de ação - Execução de todos os tipos de provisioners (são 3 tipos) para geração de arquivos com informações da VM e exportação em arquivos.
#####################################################################################################################################################

resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub")
}

resource "aws_instance" "vm" {
  ami                         = "ami-04473c3d3be6a927f"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id # Utilizando o data source do bucket s3 da VPC 
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public_ip.txt"
  }

  provisioner "file" {
    content     = "public_ip: ${self.public_ip}"
    destination = "/tmp/public_ip.txt"
  }

  provisioner "file" {
    source      = "./teste.txt"
    destination = "/tmp/exemplo.txt"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("./aws-key")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo ami: ${self.ami} >> /tmp/ami.txt",
      "echo private_ip: ${self.private_ip} >> /tmp/private_ip.txt"
    ]
  }

  tags = {
    "Name" = "vm-terraform"
  }
}