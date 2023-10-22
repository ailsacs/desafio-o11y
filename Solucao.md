# Solução para a Atividade de Observabilidade

## Objetivo do Laboratório:

Criar um ambiente de observabilidade usando Prometheus e Grafana para monitorar uma aplicação de exemplo.

## Technologies Used:

* Linux (Ubuntu based)
* Python Application
* Prometheus
* Grafana

## Abordagem:

Após a devida instrumentação do ambiente monitorado com os recursos Prometheus e Grafana.

Foi realizado a padronização dos alertas baseados nas necessidades do desafio, Contagem total de erros, contagem de limite da função, disponibilidade da aplicagem.

Configurados para notificar o serviço de visão de alertas.

A aplicação é exetuda com o comando no terminal para rodar o script .sh de automação build do ambiente.

## Passos:

### Passo 1: clone o repositório github ou importo os arquivos da aplicação.

$ git clone https://github.com/ailsacs/desafio-o11y.git

### Passo 2: navegue para a pasta da aplicação PATH /desafio-o11y.

cd ~/desafio-o11y

OBS: Caso esteja fora do root /dir, separe o PATH completo para execução da automação.
Ex: PATH = root/documents/desafio-o11y 

### Passo 3: Editanto automação ShellScript.

- Abra os arquivos build.sh e server.sh em seu editor de texto usual (bloco de notas, VS Code)
- Altere os PATH usados para o caminho do diretório "PATH/desafio-o11y"

-- #executando conteiners docker isolado
-- #Script a ser executado o server
-- #acessando dir python-app

### Passo 4: Alterando a permissão e executando o script.

- Altere o nível de permissão do build.sh para execução e inicie a automação.

$ chmod 754 build.sh
$ ./build.sh


### What's happening?

- O script irá preparar o ambiente baixando os pacotes necessários, erguendo os containers com docker-compose e executar o servidor. 
- Teremos um ambiente distribuido em 
	- Aplicação Python rodando http://localhost:3001
	- Prometheus no conteiner http://localhost:9090
	- Grafana no conteiner http://localhost:3000
	- Alertmanager no conteiner http://localhost:9093
	
### Acesse a aplicação em seu http://localhost:3001

- execute 6 ou mais vezes a opção "Gerar Erro" e "Calcular Duração"
- será processado dentro do monitoramento os disparos de alertas para o paínel de alertas https://webhook.site/

# Parabéns, você acompanhou todo o processo fundamental para instrumentação e monitoramento de um ambiente de aplicação. 
