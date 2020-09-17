# getDocker  

Docker containers for GET's project development environment

# Directory structure  

 - src/
 - php/
 - Dockerfile
 - docker-compose.yml

 **src/**: here you must place your project code  
 **php/**: here are the configuration files (php.ini, my.conf, etc..)  

# Commands

Follow this steps to run your project

## Start/Stop the containers  
sudo docker-compose up -d  
sudo docker-compose down  

## Accessing containers

**Access Centos container**  
sudo docker-compose exec centos bash

**Access Mysql container**  
sudo docker-compose exec db bash

**Restore mysql backup**  
sudo docker exec -i mysqldatabase mysql -uroot -ppassword dbname < bkp.sql

## Helpful docker commands
**bild a new image**  
sudo docker build -t img-nome  

**List docker images**  
sudo docker images -a

**Remove all images**  
sudo docker rmi $(sudo docker images -a -q)

**Remove volume**  
sudo docker volume prune

**List containers**  
sudo docker container ls

**Remove storages**  
sudo docker container prune
