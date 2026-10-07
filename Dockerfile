FROM ubuntu:22.04 
RUN apt-get update
RUN apt-get install -y openjdk-21-jdk
ENV JAVA_HOME /usr
ADD apache-tomcat-10.1.60.tar.gz /root
COPY target/flipkarts.war /root/apache-tomcat-10.1.60/webapps
ENTRYPOINT /root/apache-tomcat-10.1.60/bin/startup.sh && bash

