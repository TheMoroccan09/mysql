FROM mysql:latest

MAINTAINER Themoroccan09 <github@themoroccan09>

ENV DB_NAME='employees_com'
ENV DB_PSWD='root'
ENV DB_FILE=employees_com.sql



ENV MYSQL_DATABASE=$DB_NAME \
    MYSQL_ROOT_PASSWORD=$DB_PSWD

## INSTALL TOOLS
RUN apt-get update &&\
        apt-get install nano openssh-client -y


ADD $DB_FILE /docker-entrypoint-initdb.d

EXPOSE 3306
