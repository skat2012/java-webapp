FROM maven:alpine as build
WORKDIR /home/admin/boxfuse-sample-java-war-hello
RUN mvn package