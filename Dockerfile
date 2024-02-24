FROM gradle:7-jdk11 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:11
EXPOSE 8080
COPY --from=build /target/demo-0.0.1-SNAPSHOT.jar demo.jar
ENTRYPOINT ["java","-jar","demo.jar"]