FROM maven:alpine as build
WORKDIR /home/admin/boxfuse-sample-java-war-hello
RUN mvn -f /home/admin/boxfuse-sample-java-war-hello/pom.xml clean package