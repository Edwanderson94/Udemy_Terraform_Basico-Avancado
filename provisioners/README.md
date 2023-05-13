Pré-requisito: 

1- executar a vpc 
2- executar a vm com vpc remote state

Testes realizados: 
-- Erro ao executar o provisioner local-exec 
--- realizado a criação de uma outra chave ssh através do plan-v4.out 
--- realizado a não criação de uma key-pair pois já existia uma no momento da criação da vm-com-vpc-remote-state


- provisioner é um nested block dos resources;
- é utilizado para executar um script na maquina que foi provisionada ou pós provisionamento;
-- é utilizado para executar localmente ou em uma maquina remota;
- a propria documentação do terraform adverte que o provisioners sempre é a ultima opção, existe uma serie de itens que podem te ajudar antes de chegar no provisioners;
- varias plataformas proporcionam a utilização de scripts no momento da criação da maquina virtual;
-- Geralmente ele é utilizado como nested block do resources da aws_instance ou no bloco, null-resource;
- é possivel também utilizar esse recurso quando se usa uma bastion; 




- Comando local-exec para executar scripts na maquina local 

- comando remote-execu para executar scripts na maquina remota, é possivel executar vários comandos inline.
-- necessário além do bloco de provisioner um bloco de conexão

- provisioner file permite que escreva algo em um aquivo já existente ou copie o arquivo de scripts para dentro da sua maquina.