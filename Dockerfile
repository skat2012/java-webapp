FROM ubuntu:20.04
RUN apt update && apt install -y -q maven tomcat9
CMD ["git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git"]
RUN cd ~/boxfuse-sample-java-war-hello && mvn package
COPY ~/boxfuse-sample-java-war-hello/*war /var/lib/tomcat9/webapps
EXPOSE 8080