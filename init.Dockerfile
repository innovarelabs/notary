FROM busybox
RUN mkdir /initdb
COPY ./notarysql/postgresql-initdb.d/* /initdb/
RUN find /initdb -type f -exec chmod 777 {} \; && ls -la /initdb