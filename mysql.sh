#!/bin/bash
echo "####### START MYSQLD ########"
cp -r notarysql/* /docker-entrypoint-initdb.d/
mysqld --user=root
#--innodb_file_per_table



