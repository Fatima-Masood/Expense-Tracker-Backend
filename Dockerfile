FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:21-slim
COPY target/Expense-Tracker-1.0-SNAPSHOT.jar expense-tracker.jar
EXPOSE 8080

ENTRYPOINT ["java","-jar","expense-tracker.jar"]