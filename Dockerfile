FROM openjdk:8-jre
WORKDIR /home/admin/boxfuse-sample-java-war-hello
RUN mvn package