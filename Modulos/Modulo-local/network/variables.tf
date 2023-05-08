variable "cidr_vpc" {
  description = "Cidr block para vpc"
  type = string
}

variable "cidr_subnet" {
  description = "Cidr block para subnet"
  type = string
}

variable "enviroment" {
  description = "Ambiente onde o recurso será utilizado"
  type = string
}