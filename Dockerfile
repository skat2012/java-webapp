FROM maven
RUN cd /home/admin/boxfuse-sample-java-war-hello
RUN mvn clean package