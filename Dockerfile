FROM python
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git

FROM maven
RUN mvn /home/admin/boxfuse-sample-java-war-hello/ clean package