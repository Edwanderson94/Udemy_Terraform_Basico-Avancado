resource "aws_vpc" "vpc" {
    count = var.enviroment == "prd" ? 1 : 0 # Dá para se usar na pipeline a automatização com este recurso
    
    cidr_block = "10.0.0.0/16"

    tags = {
        "name" = "vpc-terraform"
    } 
}