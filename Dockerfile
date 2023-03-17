FROM alpine:latest
WORKDIR /home/admin/boxfuse-sample-java-war-hello
RUN mvn package