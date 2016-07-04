FROM java:8-jdk
MAINTAINER Ante Grancaric <agrancaric@gmail.com>

ARG project_name
ARG server_port

RUN mkdir -p /opt/$project_name/app
COPY $project_name.jar /opt/$project_name/app/app.jar

WORKDIR /opt/$project_name/app

EXPOSE $server_port

ENTRYPOINT ["java","-Xms512m", "-Xmx1g", "-jar", "app.jar"]


