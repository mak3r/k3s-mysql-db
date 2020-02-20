#!/bin/sh
set +x

docker pull mysql/mysql-server:8.0-aarch64
docker run --name=k3s-mysql -e MYSQL_ROOT_PASSWORD=k3s-sql-secret -p 3306:3306 -d mysql/mysql-server:8.0-aarch64

docker exec k3s-mysql mysql -uroot -p k3s-sql-secret < create-admin-user.sql
