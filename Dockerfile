FROM ubuntu:20.04
RUN apt update && \
    apt install -y -q maven tomcat9
WORKDIR /home/admin/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/admin/boxfuse-sample-java-war-hello/
RUN mvn package
WORKDIR /home/admin/boxfuse-sample-java-war-hello/target/
COPY hello-1.0.war /var/lib/tomcat9/webapps
EXPOSE 8080