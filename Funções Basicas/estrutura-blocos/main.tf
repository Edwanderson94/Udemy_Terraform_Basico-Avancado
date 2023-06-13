# Bloco de configurações do terraform
terraform {

}

# Bloco de configuração do provider que será utilizado
provider "aws" {

}

# Bloco para a criação de recursos do provider
resource "aws_instance" "vm1" {

# Dentro desse bloco irá toda a configuração do recurso que está sendo criado.

}

# Esse bloco é utilizado para pegar informações de fora do terraform para se usar internamente.
data "aws_ami" "image" {

}

# Bloco para executar chamada de modulos locais ou remotos
module "nome_do_modulo" {

}

# Bloco para configurar variaveis
variable "vm_name" {

}

# Bloco para expor informações que foi gerado a partir do código do terraform
# Exemplo: Pegar informações para serem consumidas por uma pipeline
output "vm1_ip" {

}

# Bloco para definir funções ou porçoes do código que é usado com bastante frequencia para reaproveitar o código
# e não precisar ficar re-escrevendo todas vez que precisar utilizar aquela porção/função várias vezes.
locals {

}