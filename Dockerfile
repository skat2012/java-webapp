FROM ubuntu:18.04
RUN apt-get update && \
    apt-get install -y -q maven tomcat9 && \
    cd /home/admin/boxfuse-sample-java-war-hello && \
    mvn package
COPY /home/admin/boxfuse-sample-java-war-hello/target/*.war /var/lib/tomcat9/webapps
EXPOSE 8080