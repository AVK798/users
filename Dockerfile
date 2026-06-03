FROM  maven:3-openjdk-8 as build
RUN mkdir -p /app/src
WORKDIR /app
COPY src src
COPY pom.xml .
RUN mvn package



FROM eclipse-temurin:8-jre
COPY --from=BUILD /app/target/users-api-0.0.1.jar  users.jar
CMD ["java", "-jar", "users.jar"]