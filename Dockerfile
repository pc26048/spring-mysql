#pull docker image for JDK17 from DockerHub
#FROM openjdk:17-jdk-slim
FROM openjdk:17
#copy the jar file which is target folder into the container
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} spring-mysql-app.jar
ENTRYPOINT ["java","-jar","/spring-mysql-app.jar"]