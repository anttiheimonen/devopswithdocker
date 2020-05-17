FROM openjdk:8

WORKDIR /springservice
RUN git clone https://github.com/docker-hy/spring-example-project
WORKDIR /springservice/spring-example-project
RUN ./mvnw package
ENTRYPOINT ["java", "-jar", "./target/docker-example-1.1.3.jar"]
