FROM maven:3.5-jdk-8-alpine
WORKDIR /maven-unit-test
RUN mvn test
RUN mvn -Dtest=TestMessageBuilder test
