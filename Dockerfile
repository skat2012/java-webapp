FROM maven
WORKDIR /home/admin/boxfuse-sample-java-war-hello
RUN mvn clean package