FROM  eclipse-temurin:8-jdk
RUN mkdir -p /app/src
WORKDIR /app
COPY src src
COPY pom.xml .
RUN mvn package
CMD ["java", "-jar", "users.jar"]
