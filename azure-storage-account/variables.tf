variable "location" {
  description = "Região dos recursos"
  type        = string
  default     = "West Europe"
}

variable "account_tier" {
  description = "Tier da Storage Account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de Replicação de Dados"
  type        = string
  default     = "LRS"
  sensitive   = true
}