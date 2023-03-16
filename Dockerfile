FROM ubuntu:18.04
RUN apt update && \
    apt install -y -q maven tomcat9
WORKDIR /home/admin/boxfuse-sample-java-war-hello
CMD [ "mvn package" ]
COPY /home/admin/boxfuse-sample-java-war-hello/target/* /var/lib/tomcat9/webapps
EXPOSE 8080