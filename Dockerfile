FROM ubuntu:20.04
RUN apt update && apt install -y -q maven && apt install -y -q tomcat9
CMD ["git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git"]
CMD ["cd /home/admin/boxfuse-sample-java-war-hello"]
CMD ["mvn package"]
COPY /home/admin/boxfuse-sample-java-war-hello/target/*.war /var/lib/tomcat9/webapps
EXPOSE 8080