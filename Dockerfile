FROM maven:alpine
WORKDIR /home/admin/boxfuse-sample-java-war-hello
ADD pom.xml
RUN mvn package