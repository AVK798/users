FROM  maven:3-openjdk-8 as build
RUN mkdir -p /app/src
WORKDIR /app
COPY src src
COPY pom.xml .
RUN mvn package



FROM openjdk:8-jre-slim
COPY --from=BUILD /app/target/users-1.0.jar  users.jar
CMD ["java", "-jar", "users.jar"]