# getDocker

Docker containers para ambiente de desenvolvimento do projeto get

# Estrutura de diretórios

 - src/
 - php/
 - Dockerfile
 - docker-compose.yml

 **src/**: aqui você deve colocar o código fonte do seu projeto 
 **php/**: aqui ficam os arquivos de configurações do container (php.ini, my.conf, etc..)

# Comandos

Siga o passo a passo para **startar** seu ambiente

## Iniciando/parando o containers
sudo docker-compose up -d
sudo docker-compose down

## Acessando os containers

**entrar no container do mysql**

sudo docker-compose exec db bash

**entrar no container do centos**

sudo docker-compose exec cent bash

**restaurar banco de dados**

sudo docker exec -i mysqldatabase mysql -uroot -ppassword dbname < bkp.sql

## Comandos docker
**bilda uma imagem**

sudo docker build -t img-nome .

**listar as imagens**

sudo docker images -a

**remover todas imagens**

sudo docker rmi $(sudo docker images -a -q)

**remover volumes**

sudo docker volume prune

**listar containers**

sudo docker container ls

**apagar storages não utilizados**

sudo docker container prune
