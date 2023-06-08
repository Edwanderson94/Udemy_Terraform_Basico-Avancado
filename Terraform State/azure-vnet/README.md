### VNet - Configuração Básica | Terraform - Azure Cloud

Neste projeto estamos provisionando uma vnet com seus recursos básicos completo na azure cloud, 
estamos utilizando um remote state com storage account para o armazenamento.

### Como usar

1. Execute o git clone do projeto <link>
2. Execute o comando terraform init
3. Execute o comando terraform plan
4. E em seguida o comando terraform apply -auto-approve

### Funcionalidades

- Remote State com Storage Account
- Vnet 
- Subnet 
- Security Group
- Security Group Association

### Layout Console Azure

Segue abaixo o remote state que será crado para o projeto: 

![remote-state-resource-group](azure-vnet\assets\remote-state-terraform.png)

Segue abaixo o resource group que será criado no projeto: 

![resource-group-vnet](azure-vnet\assets\resource-groups-vnet.png)

Segue abaixo os recursos de virtual network e network security que será criado no projeto dentro do resource groups: 

![resource-group-vnet-nsg](azure-vnet\assets\resource-groups-vnet-nsg.png)

Segue abaixo a vnet que será provisionada: 

![vnet-terraform](azure-vnet\assets\vnet-terraform.png)

Segue abaixo a subnet que será provisionada: 

![subnet-terraform](azure-vnet\assets\subnet-terraform.png)

### Arquitetura

### Tecnologias Utilizadas

- Terraform

### Licença

Inserir a licença do software.