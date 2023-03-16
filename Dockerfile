FROM ubuntu:18.04
ENV boxfuse=boxfuse-sample-java-war-hello
RUN apt update && \
    apt install -y -q maven tomcat9 && \
    cd /home/admin/${boxfuse} && \
    mvn package
COPY /home/admin/boxfuse-sample-java-war-hello/target/*.war /var/lib/tomcat9/webapps
EXPOSE 8080