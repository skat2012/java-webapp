FROM ubuntu:20.04
RUN apt update && apt install -y -q maven tomcat9
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd ~/boxfuse-sample-java-war-hello
RUN mvn package
RUN cp -i ~/boxfuse-sample-java-war-hello/*war /var/lib/tomcat9/webapps
EXPOSE 8080