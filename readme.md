

## Build docker
cd <root-of-project>
docker-compose build && docker-compose up -d


## nginx
sudo docker exec -it bozaweb bash


## mysql
sudo docker exec -it bozamsql bash
mysql -u root -p
SELECT user FROM mysql.user;
show databases;


## ubuntu20
Credentials
    - root:1234
    - miroslav:1234

docker exec -it bozaubuntu su user

docker run -rm -e LOCAL_USER_ID=$(id -u $USER) ubuntu20-custom-image:1.0 /bin/bash



