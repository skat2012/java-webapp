FROM maven:3.6.3-1
WORKDIR /home/admin/boxfuse-sample-java-war-hello
RUN mvn package