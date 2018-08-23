FROM 192.168.57.89:5000/centos:7.5.1804
MAINTAINER arno "46957530@qq.com"

RUN mkdir -p /z/java/jdk-8
ADD /usr/local/newhope/java1.8 /z/java/jdk-8

RUN mkdir -p /z/java/apache-tomcat-7.0.70
ADD tomcat /z/java/apache-tomcat-7.0.70

ENV JAVA_HOME /z/java/jdk-8
ENV CATALINA_HOME /z/java/apache-tomcat-7.0.70
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin

EXPOSE 8080
CMD ["/z/java/apache-tomcat-7.0.70/bin/catalina.sh","run"]
