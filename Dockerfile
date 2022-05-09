FROM openjdk:8-jdk-alpine
MAINTAINER MNAGEN
COPY target/*.jar spring-petclinic-2.4.5.jar
ENTRYPOINT ["java","-jar","/spring-petclinic-2.4.5.jar"]

//FROM tomcat:latest

//LABEL maintainer="Nidhi Gupta"

//ADD ./target/LoginWebApp-1.war /usr/local/tomcat/webapps/

//EXPOSE 8080

//CMD ["catalina.sh", "run"]
