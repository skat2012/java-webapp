FROM ubuntu:18.04
WORKDIR /home/admin/boxfuse-sample-java-war-hello
ENTRYPOINT [ "mvn package" ]