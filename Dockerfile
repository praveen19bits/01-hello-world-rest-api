FROM openjdk:8-jdk-alpine
EXPOSE 9090
ADD target/hello-world-rest-api.jar app.jar
ENTRYPOINT [ "sh", "-c", "java -jar /app.jar" ]