FROM 192.168.57.89:5000/centos-jdk8-tomcat7:v20180824
MAINTAINER arno "46957530@qq.com"

ADD mavenTest.war /z/java/apache-tomcat-7.0.70/webapps

EXPOSE 8080
CMD ["/z/java/apache-tomcat-7.0.70/bin/catalina.sh","run"]
