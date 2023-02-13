FROM openjdk:8-jdk-alpine
MAINTAINER hariom_tech.com
EXPOSE 9090
COPY target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]