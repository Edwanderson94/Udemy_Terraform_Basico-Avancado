variable "location" {
  description = "Região dos recursos"
  type        = string
  default     = "West Europe"
}

variable "aws_pub_key" {
  description = "Public key para vm na aws"
  type        = string
}

variable "azure_pub_key" {
  description = "Public key para vm na azure"
  type        = string
}