FROM ubuntu:22.04
RUN apt update && \
    apt install -y -q maven tomcat9
WORKDIR /home/admin/boxfuse-sample-java-war-hello
CMD [ "mvn package" ]
ENV war=/home/admin/boxfuse-sample-java-war-hello/target/*.war
RUN cp ${war} /var/lib/tomcat9/webapps
EXPOSE 8080