# Terraform - Conceitos Básicos e Avançados

Visão geral do projeto:

- Projeto destinado ao curso realizado na udemy: https://www.udemy.com/course/terraform-do-basico-ao-avancado/

- Nesse projeto estamos realizando a criação de uma Nuvem Privada Virtual na AWS e Azure com Maquinas Virtuais atreladas a Nuvem Privada Virtual, na AWS refere-se a VPC e na Azure como Vnet. Além desse ambiente para que possamos criar nossas vms também encontrará conceitos que foi aprendido no curso como um todo.

### Como usar

1. Realizar o terraform init nas pastas aws-vpc e azure-vnet para que possa fazer o download dos módulos e recursos para a criação de uma nuvem privada virtual.
2. Realizar o terraform apply nas pastas aws-vpc e azure-vnet para a criaçao de uma nuvem privada virtual.
2.1 Se você for criar a sua pipeline e não executar a que foi criada nesse projeto, adicione as chaves publicas em sua pipeline para que consiga acessar a sua VM posterior a sua criação.
3. Executar a pipeline na ferramenta desejada seja azure devops, gitlab ou github actions.

Observações:
1. Verifique antes de executar a pipeline se realmente a nuvem privada virtual foi criada na aws a VPC e na azure a VNET.
2. Verifique se as chaves ssh não expiraram e caso isso aconteça efetue a geração de novas chaves.

### Tecnologias Utilizadas

- Terraform
- AWS
- Azure

### Licença

