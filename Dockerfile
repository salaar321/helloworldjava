# FROM maven:3.9.8-eclipse-temurin-11 as buildhelloworld
# COPY . .
# RUN mvn clean install

# FROM maven:3.9.8-eclipse-temurin-11 as buildbyeworld
# COPY ./spriingboot-byeworld .
# RUN mvn clean install
FROM openjdk:11
COPY target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"] 