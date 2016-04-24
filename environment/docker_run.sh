docker stop bs-es
docker stop bs-mariadb
docker rm bs-es
docker rm bs-mariadb

docker run -d --name bs-es -p 9201:9200 -p 9301:9300 kaonash/elasticsearch:2.3
docker run -d --name bs-mariadb -e MYSQL_ROOT_PASSWORD=system -p 3316:3306 mariadb:5.5

sleep 10s
sh register_index.sh item
