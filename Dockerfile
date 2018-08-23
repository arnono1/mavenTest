FROM 192.168.57.89:5000/centos:7.5.1804
MAINTAINER arno "46957530@qq.com"

RUN mkdir -p /z/java/java1.8
ADD /usr/local/newhope/java1.8 /z/java/java1.8

RUN mkdir -p /z/java/tomcat8
ADD /usr/local/newhope/tomcat8 /z/java/tomcat8

ENV JAVA_HOME /z/java/java1.8
ENV CATALINA_HOME /z/java/tomcat8
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin

EXPOSE 8080
CMD ["/z/java/tomcat8/bin/catalina.sh","run"]
