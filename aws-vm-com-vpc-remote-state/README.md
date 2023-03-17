### VNet - Configuração Básica | Terraform - Azure Cloud

Neste projeto estamos provisionando uma Instancia EC2 (Virtual Machine), utilizando uma VPC já existente (atraves de data source do remote state armazenado em um s3 especifico da vpc), criado as chaves públicas (para que possamos acessar a maquina via ssh).

### Pré-Requisitos

1. Executar o projeto da pasta aws-vpc <link>

### Como usar

1. Execute o git clone do projeto <link>
2. Execute o comando terraform init
3. Execute o comando terraform plan
4. E em seguida o comando terraform apply -auto-approve
5. Para destruir os recursos provisionados execute o comando terraform destroy -auto-approve

### Funcionalidades

- Para utilizar a maquina virtual criada, digite "ssh -i <nome_da_chave_publica> <usuario>@<ip_da_instancia_provisionada>"
Observações: Ao final da execução dos arquivos terraform será apresentado o IP da sua EC2/VM
-- Exemplo: ssh -i aws-key ubuntu@18.228.235.46 

### Layout Console AWS

<coletar os prints e anexar nessa região>


### Arquitetura

### Tecnologias Utilizadas

- Terraform

### Licença

Inserir a licença do software.