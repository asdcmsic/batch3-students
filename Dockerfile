# Pull base image 
From tomcat:9.0.0

# Maintainer 
MAINTAINER "asdc.msic@gmail.com" 

COPY ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY ./context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
CMD ["catalina.sh","run"]
