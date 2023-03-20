FROM tomcat:9.0-jdk11
MAINTAINER Antonio Marchán Posada "wildworld14@gmail.com"
RUN apt update \
    && apt upgrade -y \  
    && apt clean \
    && rm -rf /var/lib/apt/lists/*
COPY java-hello-world-1/target/*.war /usr/local/tomcat/webapps/
