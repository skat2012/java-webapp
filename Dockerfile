FROM maven:alpine as build
ENV HOME=/home/admin/boxfuse-sample-java-war-hello
WORKDIR $HOME
RUN mvn package