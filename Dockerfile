FROM mysql:5.7

# Change datadir to a not volumized directory
RUN sed -ie 's,datadir.*,datadir = /var/lib/jrs-myslq,g' /etc/mysql/my.cnf

ENV MYSQL_ROOT_PASSWORD password
