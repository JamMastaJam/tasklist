FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /
COPY /src /src
COPY checkstyle-suppressions.xml /
COPY pom.xml /
RUN mvn -f /pom.xml clean package

FROM openjdk:17-jdk-slim
WORKDIR /
COPY /src /src
COPY --from=build /target/*jar application.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "application.jar"]
#FROM openjdk:17-jdk-slim
#COPY target/tasklist-0.0.1-SNAPSHOT.jar application.jar
#ENTRYPOINT ["java", "-jar", "application.jar"]
