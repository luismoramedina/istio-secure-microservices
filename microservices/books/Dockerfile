FROM openjdk

ADD target/*.jar /app.jar
WORKDIR /
ENTRYPOINT ["java", "-jar", "app.jar"]