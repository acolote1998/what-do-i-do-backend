# Stage 1: Build
FROM maven:3.9.6-eclipse-temurin-21 AS build
COPY src src
COPY pom.xml .
RUN mvn clean package -DskipTests

# Stage 2: Runtime
FROM eclipse-temurin:21-jdk-jammy
COPY --from=build /target/what-do-i-do-backend-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
