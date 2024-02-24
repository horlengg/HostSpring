# Stage 1: Build stage
FROM gradle:latest AS build
WORKDIR /app
COPY . .
RUN gradle build -x test

# Stage 2: Production stage
FROM adoptopenjdk/openjdk17:latest AS production
WORKDIR /app
COPY --from=build /app/build/libs/demo-0.0.1-SNAPSHOT.jar demo.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "demo.jar"]