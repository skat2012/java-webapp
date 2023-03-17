FROM python
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/admin/boxfuse-sample-java-war-hello/
RUN mvn package