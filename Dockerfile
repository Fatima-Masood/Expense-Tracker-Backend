FROM eclipse-temurin-17

COPY target/Expense-Tracker-1.0-SNAPSHOT.jar expense-tracker.jar
ENTRYPOINT ["java","-jar","expense-tracker.jar"]