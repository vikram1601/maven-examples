FROM maven:3.5-jdk-8-alpine
WORKDIR /maven-unit-test
COPY --from=0 /test /maven-unit-test
RUN mvn install
RUN mvn -Dtest=TestMessageBuilder test
