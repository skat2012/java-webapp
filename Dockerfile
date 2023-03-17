FROM maven:3.5.2-jdk-8-alpine
COPY pom.xml /home/admin/boxfuse-sample-java-war-hello/
WORKDIR /home/admin/boxfuse-sample-java-war-hello
RUN mvn package