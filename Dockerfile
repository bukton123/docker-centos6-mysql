FROM centos:6.9
LABEL maintainer="bukton <buk_ton2@hotmail.com>"

RUN yum update -y && \
    yum install mysql-server mysql wget -y && \
    cp /etc/my.cnf /etc/my.cnf.bak && \
    wget https://raw.githubusercontent.com/major/MySQLTuner-perl/master/mysqltuner.pl && \
    chmod +x mysqltuner.pl

EXPOSE 3306
CMD ["mysqld"]