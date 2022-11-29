

## Build docker
cd <root-of-project>
docker-compose build && docker-compose up -d

## nginx
- Enter container:
docker exec -it bozaweb bash

## mysql
<!-- - Enter container:
docker exec -it bozamysql bash 
mysql -u root -p -->

- Connect from host: (DEFAULT IP)
mysql -u root -p -h 127.0.0.1 -e "select @@socket" -P 3306
mysql --protocol=TCP -u root -p -h 127.0.0.1 -P 3306

- Connect from container (STATIC IP)
mysql -u root -p -h 10.5.0.6 -e "select @@socket" -P 3306
mysql --protocol=TCP -u root -p -h 10.5.0.6 -P 3306

- [mysql] Commands:
SELECT user FROM mysql.user;
show databases;

## ubuntu20
- Credentials
    - root:1234
    - user:1234

<!-- - Make container manually:
docker run -rm -e LOCAL_USER_ID=$(id -u $USER) ubuntu20-custom-image:1.0 /bin/bash -->

- Enter container:
docker exec -it bozaubuntu su user




