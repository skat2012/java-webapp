FROM maven:alpine as build
WORKDIR /home/admin/boxfuse-sample-java-war-hello
RUN mvn /home/admin/boxfuse-sample-java-war-hello/pom.xml clean package