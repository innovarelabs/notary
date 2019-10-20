FROM mariadb:10.1.28
RUN mkdir notarysql
COPY notarysql/postgresql-initdb.d/* notarysql/

# ADD ["mysql.sh", "notarysql/"]
# RUN chmod +x notarysql/mysql.sh
# ENTRYPOINT ["docker-entrypoint.sh"]
#
# CMD ["notarysql/mysql.sh"]