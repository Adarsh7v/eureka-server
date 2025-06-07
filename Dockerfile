# 1. Use Java 17
FROM openjdk:17-jdk-slim

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy jar file to container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# 4. Expose service port
EXPOSE 8082

# 5. Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]