variable "ingress-port" {
  description = "portas que serão abertas no sg"
  type = list(number)
  default = [ 22, 80, 443, 8080 ]
}