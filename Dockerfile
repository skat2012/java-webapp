FROM ubuntu:22.04
RUN apt update && \
    apt install -y -q maven tomcat9
WORKDIR /home/admin/boxfuse-sample-java-war-hello
CMD [ "mvn package" ]
WORKDIR /home/admin/boxfuse-sample-java-war-hello/target
CMD ["cp hello-1.0.war /var/lib/tomcat9/webapps"]
EXPOSE 8080