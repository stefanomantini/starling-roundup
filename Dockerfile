FROM adoptopenjdk/openjdk14:jre-14.0.1_7-alpine
ADD build/libs/*.jar /app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]