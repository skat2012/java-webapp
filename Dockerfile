FROM maven:alpine
WORKDIR /home/admin/boxfuse-sample-java-war-hello
ADD pom.xml /home/admin/boxfuse-sample-java-war-hello
RUN mvn package