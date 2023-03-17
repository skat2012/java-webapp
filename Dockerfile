FROM maven:alpine
WORKDIR /home/admin/boxfuse-sample-java-war-hello
COPY pom.xml .
RUN mvn package