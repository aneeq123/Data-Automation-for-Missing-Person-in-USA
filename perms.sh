#!/bin/bash
for container in $(docker ps | grep etl | awk '{print $1}');
do echo $container;
docker exec -it $container bash -c 'printf "host all postgres 127.0.0.1/32 scram-sha-256" | tee /var/lib/postgresql/data/pg_hba.conf';

done

docker-compose restart
